.class public final Lcom/android/systemui/qs/bar/BrightnessVolumeBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/bar/TileHostable;


# instance fields
.field public final mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field public final mBrightnessTileList:Ljava/util/List;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mOrientation:I

.field public final mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

.field public final mVolumeTileList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarFactory;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v1, v2, v3}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    sget-object v0, Lcom/android/systemui/qs/bar/BarType;->VOLUME:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    check-cast v0, Lcom/android/systemui/qs/bar/VolumeBar;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    sget-object v0, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object p2

    iput-boolean v1, p2, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    check-cast p2, Lcom/android/systemui/qs/bar/BrightnessBar;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    const p2, 0x7f1310fc

    invoke-static {p1, p3, p2}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->createTileList(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeTileList:Ljava/util/List;

    const p2, 0x7f131047

    invoke-static {p1, p3, p2}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->createTileList(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessTileList:Ljava/util/List;

    return-void
.end method

.method public static createTileList(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;I)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTileHost;->isSystemTile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileNameToNewName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessTileList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeTileList:Ljava/util/List;

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/VolumeBar;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/VolumeBar;->destroy()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->destroy()V

    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d0318

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

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0318

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f081074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->inflateViews(Landroid/view/ViewGroup;)V

    iget-object p1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/VolumeBar;->inflateViews(Landroid/view/ViewGroup;)V

    iget-object p1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->updateHeightMargins()V

    return-void
.end method

.method public final makeCloneBar()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0318

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f081074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/VolumeBar;->makeCloneBar()V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/BrightnessBar;->makeCloneBar()V

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    iget-object v2, v2, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->updateLayout$3(Landroid/view/View;)V

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

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mOrientation:I

    if-eq v2, v0, :cond_2

    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mOrientation:I

    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/VolumeBar;->updateHeightMargins()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->updateHeightMargins()V

    :cond_2
    return-void
.end method

.method public final onKnoxPolicyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility$7()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/VolumeBar;->onUiModeChanged()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->onUiModeChanged()V

    return-void
.end method

.method public final removeAllTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/VolumeBar;->removeAllTiles()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->removeAllTiles()V

    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/VolumeBar;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setListening(Z)V

    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->updateHeightMargins()V

    return-void
.end method

.method public final updateClonedBar()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/VolumeBar;->updateClonedBar()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateClonedBar()V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->updateLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public final updateLayout$3(Landroid/view/View;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->getBarHeight()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070125

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->getBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mOrientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v1, v3

    :goto_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v1, v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;->mVolumeBar:Lcom/android/systemui/qs/bar/VolumeBar;

    iget-boolean v5, v5, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07013a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
