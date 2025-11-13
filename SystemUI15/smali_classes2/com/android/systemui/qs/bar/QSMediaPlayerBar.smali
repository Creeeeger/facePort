.class public final Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public mBarHeight:I

.field public mBarTopMargin:I

.field public mCurrentOrientation:I

.field public final mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public final mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

.field public final mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

.field public mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public final mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final mSoundCraftQpDetailAdapterLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/SecQSDetailController;Ldagger/Lazy;Lcom/android/systemui/media/MediaOutputHelper;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/qs/SecQSDetailController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/media/MediaOutputHelper;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    new-instance p1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p5, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mSoundCraftQpDetailAdapterLazy:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    iput-object p7, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecMediaHost;->removeMediaFrame(Lcom/android/systemui/media/MediaType;)V

    iget-object v0, v0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarTopMargin:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d0300

    return p0
.end method

.method public final getBarWidthWeight(Landroid/content/Context;)I
    .locals 0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0300

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaOutputHelper:Lcom/android/systemui/media/MediaOutputHelper;

    iput-object p1, v0, Lcom/android/systemui/media/MediaOutputHelper;->mediaRootView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v2, 0x7f0a06dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/media/SecMediaHost;->addMediaFrame(Lcom/android/systemui/media/MediaType;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0ac5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0ab6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0ab5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V

    new-instance v1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V

    iput-object v0, p1, Lcom/android/systemui/media/SecMediaHost;->mBudsDetailOpenRunnable:Ljava/lang/Runnable;

    iput-object v1, p1, Lcom/android/systemui/media/SecMediaHost;->mBudsDetailCloseRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateBar()V

    :cond_1
    return-void
.end method

.method public final isLandscapeView()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makeCloneBar()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v3, 0x7f0a0a7d

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateCloneMediaInfo()V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateBar()V

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaHost;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a0a7d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setCallback(Lcom/android/systemui/qs/bar/BarController$4;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/media/SecMediaHost;->setListening(ZLcom/android/systemui/media/MediaType;)V

    :cond_1
    return-void
.end method

.method public final updateBar()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    iget-object v2, v2, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0710bf

    invoke-static {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getMediaPlayerCollapsedHeight(Landroid/content/Context;)I

    move-result v1

    :goto_2
    iput v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarTopMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_8

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0a0ac4

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    const v3, 0x7f0a08ed

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a08ec

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0ab6

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0ab5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    if-eqz v2, :cond_6

    move v3, v0

    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mPlayLastSongView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a0ac2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f080a5f

    goto :goto_6

    :cond_7
    const v2, 0x7f0809a8

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isLandscapeView()Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_9
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateCloneMediaInfo()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    iget-object v3, v1, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/SecMediaPlayerData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayerSize$1()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const v3, 0x7f0a0a7d

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, 0x74000000

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v6, 0x7f0a06dd

    invoke-virtual {v5, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    if-eqz v2, :cond_3

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v7, 0x7f0a06dc

    invoke-virtual {v5, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_a

    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    iget-object v1, v1, Lcom/android/systemui/media/MediaDataFormat;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a0aa8

    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a0aa7

    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, ""

    iget-object v3, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    goto :goto_5

    :cond_7
    move-object v3, v2

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v5, 0x7f0a07e2

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v5, 0x7f0a0a82

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v2

    :goto_6
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v4, 0x7f0a0aa6

    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    move-object v2, v0

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v0, 0x7f0a0aa5

    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final updateClonedBar()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateCloneMediaInfo()V

    return-void
.end method
