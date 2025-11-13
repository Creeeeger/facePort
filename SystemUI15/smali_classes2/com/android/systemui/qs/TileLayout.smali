.class public Lcom/android/systemui/qs/TileLayout;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;


# instance fields
.field public mCellHeight:I

.field public mCellMarginHorizontal:I

.field public mCellMarginVertical:I

.field public mCellWidth:I

.field public mColumns:I

.field public mEstimatedCellHeight:I

.field public final mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

.field public final mLessRows:Z

.field public mListening:Z

.field public mMaxAllowedRows:I

.field public mMaxColumns:I

.field public mMinRows:I

.field public final mRecords:Ljava/util/ArrayList;

.field public mResourceCellHeight:I

.field public final mResourceCellHeightResId:I

.field public mResourceColumns:I

.field public mRows:I

.field public mSidePadding:I

.field public mSquishinessFraction:F

.field public final mTempTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f070e68

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeightResId:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_ENABLE_LANDSCAPE:Lcom/android/systemui/flags/UnreleasedFlag;

    sget-object v1, Lcom/android/systemui/flags/RefactorFlag;->Companion:Lcom/android/systemui/flags/RefactorFlag$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/android/systemui/flags/RefactorFlag$Companion;->forView$default(Lcom/android/systemui/flags/RefactorFlag$Companion;Lcom/android/systemui/flags/UnreleasedFlag;)Lcom/android/systemui/flags/RefactorFlag;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/flags/RefactorFlag;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iput-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_less_rows"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TileLayout;->addTileView$1(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->saveTileIconAsImage()V

    return-void
.end method

.method public addTileView$1(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    check-cast v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    cmpg-float v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final layoutTileRecords(IZ)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, p1, :cond_4

    iget v6, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v7, v8

    const v8, 0x3dcccccd    # 0.1f

    add-float/2addr v7, v8

    int-to-float v8, v5

    iget v9, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    iget v7, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    int-to-float v7, v7

    add-float/2addr v9, v7

    mul-float/2addr v9, v8

    float-to-int v7, v9

    if-eqz v0, :cond_2

    iget v8, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v11, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    add-int/2addr v11, v10

    mul-int/2addr v11, v8

    add-int/2addr v11, v9

    add-int/2addr v10, v11

    iget-object v8, v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v7

    iget-object v6, v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz p2, :cond_3

    invoke-virtual {v6, v11, v7, v10, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v11, v7, v10, v8}, Landroid/widget/LinearLayout;->setLeftTopRightBottom(IIII)V

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->setPosition(I)V

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(IZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_0
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    div-int/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mEstimatedCellHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, p0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v4, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3, v4, p2}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p2, v0

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr p2, v1

    sub-int/2addr p2, v0

    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final removeAllViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateMaxRows(II)Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeight:I

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mEstimatedCellHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    add-int/2addr v1, v2

    div-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-ge p1, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    if-lt p1, v1, :cond_1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr p2, v1

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    div-int/2addr p2, v1

    if-le p1, p2, :cond_2

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public updateResources()Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f05006e

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeightResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceCellHeight:I

    const v1, 0x7f070e6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    instance-of v4, p0, Lcom/android/systemui/qs/SideLabelTileLayout;

    xor-int/2addr v4, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    const v1, 0x7f070e6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mIsSmallLandscapeLockscreenEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2

    :cond_2
    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileLayout;->mLessRows:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    const v1, 0x7f070e91

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/TileLayout;->mTempTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mEstimatedCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return v3

    :cond_4
    return v5
.end method
