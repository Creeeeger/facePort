.class public Lcom/android/systemui/qs/customize/CustomizerTileViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mColumns:I

.field public final mContext:Landroid/content/Context;

.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public final mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

.field public mDragListener:Landroid/view/View$OnDragListener;

.field public mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public mInitialPagenum:I

.field public final mInitialTiles:Ljava/util/ArrayList;

.field public mIsAvailableArea:Z

.field public mIsMultiTouch:Z

.field public mIsScrollView:Z

.field public mIsTopEdit:Z

.field public mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public mPageIndicatorPosition:F

.field public final mPages:Ljava/util/ArrayList;

.field public mParentContainer:Landroid/view/View;

.field public mRows:I

.field public mShowLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsAvailableArea:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->updateResources()Z

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalFadingEdgeEnabled(Z)V

    if-eqz v0, :cond_0

    iget-object p2, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3c9d4952    # 0.0192f

    mul-float/2addr p1, p2

    float-to-int p2, p1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFadingEdgeLength(I)V

    return-void
.end method


# virtual methods
.method public final addPage()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    :cond_0
    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->updateResources()Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result v2

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x270f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p2, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-gez v0, :cond_1

    move v0, v3

    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsScrollView:Z

    if-nez v5, :cond_5

    add-int/lit8 v5, v1, -0x1

    :goto_1
    if-lt v5, v0, :cond_5

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->isFull()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addPage()V

    if-eqz v2, :cond_2

    const/16 v6, 0x4e1e

    if-ge p2, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v6, v6, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v7, v6, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v7, v6, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v6, v6, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v7, v6, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v7, v6, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-lez v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    :cond_6
    return-void
.end method

.method public final addTiles(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tiles added"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSTMPagedTileLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDistribute:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final canScroll(IIILandroid/view/View;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsAvailableArea:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final distributeTiles$2()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeAllViews()V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->makePage()Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->isFull()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->makePage()Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    if-eq v1, v4, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    const-string v1, "CSTMPagedTileLayout"

    const-string v2, "mPages.remove"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    :cond_5
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    sget-object v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->Companion:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method public final getColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    return p0
.end method

.method public final getColumnMaxCountInPage()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final getCurrentItem()I
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int v0, p0, v0

    :cond_0
    return v0
.end method

.method public final getMinimumTileNum()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    mul-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1
.end method

.method public final getRightFadingEdgeStrength()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getSpec()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, v3, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "newspecs =  "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getTiledPageIndex(Lcom/android/systemui/qs/customize/CustomTileInfo;)I
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v2

    if-ltz v2, :cond_0

    return v1

    :cond_1
    return v0
.end method

.method public final getTilesInfo()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final makePage()Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mClickListener:Landroid/view/View$OnClickListener;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    :cond_0
    iput v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    iput-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->updateResources()Z

    return-object v0
.end method

.method public final moveTile(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTiledPageIndex(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveTile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pageIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTMPagedTileLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result v1

    div-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result v2

    rem-int/2addr p2, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v4, v4, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v5, v4, v2, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/CustomTileInfo;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    move v3, v5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const v1, 0x7f0a0959

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsAvailableArea:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d9d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070d9f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    instance-of v2, p0, Lcom/android/systemui/qs/customize/CustomizerActiveTileViewPager;

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsScrollView:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object p2, p2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    div-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr p2, v0

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr p2, v0

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mParentContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070d77

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mParentContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mParentContainer:Landroid/view/View;

    const v5, 0x7f0a096b

    invoke-virtual {v3, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mParentContainer:Landroid/view/View;

    const v5, 0x7f0a0950

    invoke-virtual {v3, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    if-le v2, p2, :cond_3

    move p2, v2

    :cond_3
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public final removeAllViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeAllViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removePage()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTiledPageIndex(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeTile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pageIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CSTMPagedTileLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsScrollView:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    move v2, v0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/CustomTileInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v2, v4, v6}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removePage()V

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removePage()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIsTopEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    return-void
.end method

.method public final updateResources()Z
    .locals 7

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v6, :cond_0

    iget v6, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v6, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    :cond_0
    iput v4, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iput v5, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsScrollView:Z

    iput-boolean v4, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsScrollView:Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-boolean v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mShowLabel:Z

    iput-boolean v4, v3, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->updateResources()Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeAllViews()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->distributeTiles$2()V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
