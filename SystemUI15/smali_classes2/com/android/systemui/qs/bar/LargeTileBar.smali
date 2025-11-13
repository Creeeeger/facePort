.class public Lcom/android/systemui/qs/bar/LargeTileBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/bar/TileHostable;


# instance fields
.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mOrientation:I

.field public final mQsHost:Lcom/android/systemui/qs/QSHost;

.field public mTileContainer:Landroid/widget/LinearLayout;

.field public final mTiles:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mQsHost:Lcom/android/systemui/qs/QSHost;

    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTileContainer:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateHeightMargins()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->removeAllTiles()V

    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07062b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d038c

    return p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d038c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f0a05ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTileContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/LargeTileBar;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateHeightMargins()V

    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final makeCloneBar()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d038c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a05ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mQsHost:Lcom/android/systemui/qs/QSHost;

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/qs/bar/BarItemImpl;->createTilesViewAndDistribute(Landroid/view/View;Ljava/util/ArrayList;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Ljava/lang/Boolean;Lcom/android/systemui/qs/QSHost;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mOrientation:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateHeightMargins()V

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    return-void
.end method

.method public final removeAllTiles()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/LargeTileBar;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/LargeTileBar;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTileContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    :cond_2
    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a05ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/bar/LargeTileBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/LargeTileBar;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateHeightMargins()V

    return-void
.end method

.method public updateHeightMargins()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTileContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateLayout(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateLayout(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final updateLayout(Landroid/widget/LinearLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07062a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
