.class public final Lcom/android/systemui/qs/bar/TileChunkLayoutBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BUTTON_WIDTH_MAX_RATIO:F

.field public static final BUTTON_WIDTH_MIN_RATIO:F


# instance fields
.field public mCollapsedRow:I

.field public mCollapsedRowSettingValue:I

.field public mContainerCollapsedHeight:I

.field public mContainerExpandedHeight:I

.field public mHeight:I

.field public mIsExpanded:Z

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mLocalListening:Z

.field public mPanelHost:Lcom/android/systemui/qs/QSPanelHost;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mScrollIndicatorClickContainer:Landroid/view/View;

.field private mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSettingsValueList:[Landroid/net/Uri;

.field public mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

.field public mTileLayoutBackground:Landroid/view/View;

.field public mTileLayoutContainer:Landroid/view/ViewGroup;

.field public final mTilesChangedCallback:Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v0, :cond_0

    const v1, 0x3fb47ae1    # 1.41f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    :goto_0
    sput v1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->BUTTON_WIDTH_MAX_RATIO:F

    if-eqz v0, :cond_1

    const v0, 0x3f2b851f    # 0.67f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    :goto_1
    sput v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->BUTTON_WIDTH_MIN_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelResourcePicker;)V
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

    iput-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/TileChunkLayoutBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTilesChangedCallback:Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRowSettingValue:I

    iput v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    iput v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mLocalListening:Z

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "quickstar_qs_tile_layout_custom_matrix"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "quickstar_qs_tile_layout_custom_matrix_width"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mSettingsValueList:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$1;-><init>(Lcom/android/systemui/qs/bar/TileChunkLayoutBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    return-void
.end method

.method public static getDefaultProgress()I
    .locals 3

    sget v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->BUTTON_WIDTH_MAX_RATIO:F

    sget v1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->BUTTON_WIDTH_MIN_RATIO:F

    sub-float v1, v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final calculateContainerHeight()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    iput v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071720

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071721

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    iget v4, v3, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    if-lez v4, :cond_1

    iget v5, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRowSettingValue:I

    if-le v5, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRowSettingValue:I

    :goto_0
    iput v5, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    const/4 v6, 0x1

    if-nez v5, :cond_3

    if-lez v4, :cond_3

    const/4 v5, 0x2

    iput v5, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    iget-object v3, v3, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iput v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    goto :goto_1

    :cond_2
    if-ge v4, v5, :cond_3

    iput v6, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    :cond_3
    :goto_1
    const-string v0, "calculateContainerHeight Expanded row: "

    const-string v3, " Collapsed row: "

    invoke-static {v4, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconSize(Landroid/content/Context;)I

    move-result v0

    iget v5, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    mul-int/2addr v0, v5

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f07171d

    invoke-static {v0, v1, v5}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileExpandedHeight(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v0, v4

    sub-int/2addr v4, v6

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f07171e

    invoke-static {v0, v1, v4}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->setContainerHeight(I)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelHost;->mCallbacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTilesChangedCallback:Lcom/android/systemui/qs/bar/TileChunkLayoutBar$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d03c6

    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0d2f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutContainer:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0d2e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutBackground:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0a61

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v1, 0x7f0a0a62

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->updateHeightMargins()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0810b3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutBackground:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mSettingListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->showBar(Z)V

    :cond_1
    return-void
.end method

.method public final isNeedToEdit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final makeCloneBar()V
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->updateHeightMargins()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public final orignBottomMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setContainerHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0710fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    iget v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->setIndicatorTouchHeight(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->setLabelVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    iget v2, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateFocusForTiles(IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1303b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    iget v2, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRow:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateFocusForTiles(IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->setLabelVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1306a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->setIndicatorTouchHeight(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecTileChunkLayout;->setFraction(F)V

    :goto_1
    return-void
.end method

.method public final setIndicatorTouchHeight(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0710f9

    invoke-static {v2, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0710fa

    invoke-static {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mScrollIndicatorClickContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mLocalListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/SecTileChunkLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mLocalListening:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->setContainerHeight(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->updateHeightMargins()V

    return-void
.end method

.method public final showBar(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showBar(): mBarRootView is null... "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    :cond_0
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->calculateContainerHeight()V

    return-void
.end method
