.class public Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;
.super Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final isFull()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsScrollView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateResources()Z
    .locals 4

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->mCurrentRows:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    const v2, 0x7f070d9c

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mIsTopEdit:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileExpandedWidth(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellWidth:I

    :cond_3
    const v2, 0x7f070d9d

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mShowLabel:Z

    if-eqz v3, :cond_4

    const v1, 0x7f070d9f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->withDefaultDensity(I)I

    move-result v1

    :cond_4
    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCellHeight:I

    return v0
.end method
