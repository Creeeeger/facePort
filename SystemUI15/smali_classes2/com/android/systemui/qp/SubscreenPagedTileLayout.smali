.class public Lcom/android/systemui/qp/SubscreenPagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

.field public mDistributeTiles:Z

.field public mLastMaxHeight:I

.field public mLastMaxWidth:I

.field public mLayoutDirection:I

.field public mListening:Z

.field public final mOnPageChangeListener:Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;

.field public mPageHeight:I

.field public mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public mPageIndicatorPosition:F

.field public mPageToRestore:I

.field public final mPages:Ljava/util/ArrayList;

.field public final mTiles:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    new-instance p2, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;-><init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V

    new-instance v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;-><init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    return-object p0
.end method

.method public final getColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget p0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    return p0
.end method

.method public final getCurrentItem()I
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int v0, p0, v0

    :cond_0
    return v0
.end method

.method public final getTilesHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubscreenTileLayout;

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenTileLayout;->getTilesHeight()I

    move-result p0

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isLayoutRtl()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const-string v0, "SubscreenPagedTileLayout"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0311

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    iget-object p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    iget p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const-string v0, "onMeasure, heightMeasureSpec: "

    const-string v1, " mDistributeTiles: "

    invoke-static {p2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastMaxHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPageHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLastMaxWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MeasureSpec.getSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenPagedTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    iget v2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-eq v0, v2, :cond_d

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    iput v3, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    iput v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxWidth:I

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v4, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    const/4 v5, 0x4

    iput v5, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    const-string/jumbo v6, "updateMaxRowsAndColumns width: "

    const-string v7, " availableWidth: "

    const-string v8, " mColumns: "

    invoke-static {v3, v3, v6, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " heightMeasureSpec: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SubscreenTileLayout"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget v7, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    iget v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    div-int v8, v3, v8

    iput v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    const-string/jumbo v8, "updateMaxRows before availableHeight: "

    const-string v9, " mRows: "

    invoke-static {v3, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    invoke-static {v10, v6, v8}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    iput v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    const-string/jumbo v8, "updateMaxRows After availableHeight: "

    invoke-static {v3, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    invoke-static {v8, v6, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v3, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    if-eq v7, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    if-eq v4, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    if-eqz v0, :cond_c

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iget v3, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    mul-int/2addr v4, v3

    const/4 v3, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v4, v0, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v7, v6, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iget v6, v6, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    mul-int/2addr v7, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/2addr v6, v4

    if-le v0, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_4

    iget-object v7, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v7}, Lcom/android/systemui/qp/SubscreenTileLayout;->removeAllViews()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    goto/16 :goto_4

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v4, :cond_6

    const-string v6, "Adding page"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d0311

    invoke-virtual {v7, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v5, v7, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_7

    const-string v5, "Removing page"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    :cond_9
    iget v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    iput v5, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    :cond_a
    const-string v4, "pages count is changed ("

    const-string v5, " -> "

    invoke-static {v0, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ), pageRestore="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageToRestore:I

    invoke-static {v4, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v4, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iget v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    mul-int/2addr v4, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v3, "Distributing tiles"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    move v5, v4

    :goto_5
    if-ge v4, v3, :cond_c

    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v7, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget-object v7, v7, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v0, :cond_b

    add-int/lit8 v5, v5, 0x1

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v7, v6}, Lcom/android/systemui/qp/SubscreenTileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenTileLayout;

    iget v1, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    :goto_6
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    iput v0, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    iput v1, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iput v4, v3, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLayoutDirection:I

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mAdapter:Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mListening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->updateListening$1()V

    return-void
.end method

.method public final setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0609d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0609d4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    :cond_0
    return-void
.end method

.method public final updateListening$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mListening:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qp/SubscreenTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v3}, Lcom/android/systemui/qp/SubscreenTileLayout;->updateResources()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    iget v3, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    move v0, v4

    :cond_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return v0
.end method
