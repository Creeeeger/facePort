.class public final Lcom/android/systemui/qs/bar/VolumeBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/bar/TileHostable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSecQSDetailController:Lcom/android/systemui/qs/SecQSDetailController;

.field public mSlider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

.field public mSliderContainer:Landroid/widget/RelativeLayout;

.field public mSoundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

.field public mStatusIcon:Landroid/widget/ImageView;

.field public mTileLayout:Landroid/widget/LinearLayout;

.field public final mTiles:Ljava/util/ArrayList;

.field public mVolumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

.field public mVolumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

.field public mVolumeSeekBarForEditMode:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/VolumeBar;->updateTileLayoutSizeMargins$1(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeBar;->removeAllTiles()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-eqz p0, :cond_0

    const-string v0, "VolumeSeekBar"

    const-string v1, "[QP volume] unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->qpVolumeModelCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarContainerHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d03cb

    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    const-string v1, "inflateViews"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0e89

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0b7d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a0b7c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSlider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a098d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a098e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mStatusIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-eqz p1, :cond_0

    const-string v0, "VolumeSeekBar"

    const-string v1, "[QP volume] register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/qs/bar/VolumeSeekBar;->qsExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;

    iget-object v1, v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateChangeEvent;

    invoke-virtual {v0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;->currentExpanded:Z

    invoke-direct {p1, v0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateChangeEvent;-><init>(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSlider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeIcon:Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->initialize(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;Lcom/android/systemui/volume/view/icon/QPVolumeIcon;Landroid/widget/ImageView;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qs/bar/VolumeBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/VolumeBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/VolumeBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v2, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeBar;->updateHeightMargins()V

    return-void
.end method

.method public final makeCloneBar()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a0e89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v2, 0x7f0a0b7d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v2, 0x7f0a0b7c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v2, 0x7f0a098d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a098e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeSeekBarForEditMode:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-virtual {v3, v8, v1, v2}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->initialize(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;Lcom/android/systemui/volume/view/icon/QPVolumeIcon;Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/qs/bar/BarItemImpl;->createTilesViewAndDistribute(Landroid/view/View;Ljava/util/ArrayList;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Ljava/lang/Boolean;Lcom/android/systemui/qs/QSHost;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {p0, v1, v0, v7, v8}, Lcom/android/systemui/qs/bar/VolumeBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/VolumeBar;->updateHeightMargins()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060abe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060abd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v6, v5, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v6, :cond_3

    instance-of v6, v1, Landroid/graphics/drawable/ScaleDrawable;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    check-cast v5, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    check-cast v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->slider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v4, v2}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/VolumeSeekBar;->isEarShockWarned:Z

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->setProgressChanged(I)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060ac4

    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public final removeAllTiles()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a0e89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateClonedBar()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a0b7c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSlider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSlider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v2, 0x7f0a098d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v3, 0x7f0a098e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mVolumeSeekBarForEditMode:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->initialize(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;Lcom/android/systemui/volume/view/icon/QPVolumeIcon;Landroid/widget/ImageView;)V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTileLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mSlider:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/bar/VolumeBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    return-void
.end method

.method public final updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarContainerHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v5, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, v5}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    invoke-virtual {p4, v1, v1, v1, v1}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/bar/VolumeBar;->updateTileLayoutSizeMargins$1(Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateTileLayoutSizeMargins$1(Landroid/widget/LinearLayout;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarExpandedHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mContext:Landroid/content/Context;

    iget-object v1, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeBar;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
