.class public Lcom/android/systemui/qp/SubscreenTileLayout;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBoundaryBox:Ljava/util/ArrayList;

.field public mCellHeight:I

.field public mCellMarginHorizontal:I

.field public mCellMarginVertical:I

.field public mCellWidth:I

.field public mColumns:I

.field public mLastTileBottom:I

.field public mListening:Z

.field public mMaxAllowedRows:I

.field public mMaxCellHeight:I

.field public final mRecords:Ljava/util/ArrayList;

.field public mRows:I

.field public mSquishinessFraction:F

.field public mTileLayoutHeight:I

.field public mTileVerticalMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qp/SubscreenTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenTileLayout;->updateResources()Z

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    const-string v1, "addTile position = "

    const-string/jumbo v2, "total = "

    const-string v3, "idx = "

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " spec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;->mTilespec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "withAnimationfalse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz p1, :cond_1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qp/SubscreenTileLayout$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubscreenTileLayout$1;-><init>(Lcom/android/systemui/qp/SubscreenTileLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final getTilesHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mLastTileBottom:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final indexOf(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "SubscreenTileLayout"

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v3, p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;->mTilespec:Ljava/lang/String;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "diffInfo.spec = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " i = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "diffInfo.spec is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final layoutTileRecords$1(IZ)V
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
    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mLastTileBottom:I

    iget v3, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    mul-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v3, p1, :cond_5

    iget v6, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    move v4, v1

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget v7, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    if-nez v5, :cond_2

    mul-int/2addr v7, v5

    goto :goto_2

    :cond_2
    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    :goto_2
    if-eqz v0, :cond_3

    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v2

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    iget v9, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    iget v10, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    add-int/2addr v10, v9

    mul-int/2addr v10, v8

    add-int/2addr v9, v10

    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    add-int/2addr v8, v7

    if-eqz p2, :cond_4

    iget-object v11, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v11, v10, v7, v9, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_4

    :cond_4
    iget-object v11, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v11, v10, v7, v9, v8}, Landroid/widget/LinearLayout;->setLeftTopRightBottom(IIII)V

    :goto_4
    iget-object v8, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v8, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->setPosition(I)V

    iget v8, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mSquishinessFraction:F

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    const v9, 0x3dcccccd    # 0.1f

    add-float/2addr v8, v9

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mLastTileBottom:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qp/SubscreenTileLayout;->layoutTileRecords$1(IZ)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "onMeasure, pageHeight: "

    iget-object v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget v5, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    add-int v7, v2, v5

    sub-int/2addr v7, v6

    div-int/2addr v7, v5

    iput v7, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    :cond_0
    const-string v5, "onMeasure width: "

    const-string v7, " availableWidth: "

    const-string v8, " mRows: "

    invoke-static {v3, v4, v5, v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    const-string v7, " numTiles: "

    const-string v8, " mColumns: "

    invoke-static {v4, v5, v7, v2, v8}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    const-string v5, "SubscreenTileLayout"

    invoke-static {v2, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    iget v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    if-ge v2, v4, :cond_1

    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0710d5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    goto :goto_0

    :cond_1
    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070e74

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070e90

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070e75

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    iget v7, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    mul-int/2addr v4, v7

    sub-int v4, v2, v4

    sub-int/2addr v7, v6

    div-int/2addr v4, v7

    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    iget v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    iget v7, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    mul-int/2addr v4, v7

    sub-int v4, v3, v4

    sub-int/2addr v7, v6

    div-int/2addr v4, v7

    iput v4, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMaxCellHeight: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pageWidth: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCellMarginHorizontal :"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCellHeight: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mCellWidth: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mTileVerticalMargin: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget v0, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07163e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f07163d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v10, v9, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_3

    goto :goto_4

    :cond_3
    iget-object v10, v9, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/plugins/qs/QSTileView;->setShowLabels(Z)V

    move-object v11, v10

    check-cast v11, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    iget-object v12, v11, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v14, v9, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v14}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v15

    iget v15, v15, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x2

    if-ne v15, v2, :cond_4

    const v15, 0x7f0609df

    goto :goto_5

    :cond_4
    const v15, 0x7f0609de

    :goto_5
    invoke-virtual {v10}, Lcom/android/systemui/plugins/qs/QSTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/plugins/qs/QSIconView;->getIconView()Landroid/view/View;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/widget/ImageView;

    iget-object v6, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v15}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v11, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {v14}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v6

    iget v6, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v6, :cond_7

    const v13, 0x7f0609e1

    const/4 v14, 0x1

    if-eq v6, v14, :cond_6

    const/4 v14, 0x2

    if-eq v6, v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getCircleColor: invalid state["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v13}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_6

    :cond_5
    iget-object v6, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v13, 0x7f0609e2

    invoke-virtual {v6, v13}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_6

    :cond_6
    iget-object v6, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v13}, Landroid/content/Context;->getColor(I)I

    move-result v6

    goto :goto_6

    :cond_7
    iget-object v6, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v13, 0x7f0609e0

    invoke-virtual {v6, v13}, Landroid/content/Context;->getColor(I)I

    move-result v6

    :goto_6
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v11, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v6, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    invoke-virtual {v12, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v12, Lcom/android/systemui/qp/SubscreenTileLayout$4;

    invoke-direct {v12, v1, v9}, Lcom/android/systemui/qp/SubscreenTileLayout$4;-><init>(Lcom/android/systemui/qp/SubscreenTileLayout;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    invoke-static {v2, v12}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    invoke-virtual {v11}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v9, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v9, :cond_8

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v9, v1, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v11, 0x7f0609dd

    invoke-virtual {v9, v11}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget v2, v1, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v10, v2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v10, v8}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    move v2, v9

    goto/16 :goto_4

    :cond_9
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_a

    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :cond_a
    return-void
.end method

.method public final removeAllViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubscreenTileLayout;->indexOf(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)I

    move-result v0

    const-string v1, "removeTile index = "

    const-string/jumbo v2, "tile = "

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;->mTilespec:Ljava/lang/String;

    const-string v2, "SubscreenTileLayout"

    invoke-static {v1, p1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final selectTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubscreenTileLayout;->indexOf(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    const-string/jumbo p0, "selectTile position = "

    const-string p2, "SubscreenTileLayout"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object p2, p2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mListening:Z

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 3

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    const v1, 0x7f070e6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginVertical:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginVertical:I

    :cond_0
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    const v1, 0x7f07163d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateResources columns: 4 mMaxCellHeight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMaxAllowedRows: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mColumns = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRows = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMaxAllowedRows = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxAllowedRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCellHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMaxCellHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mMaxCellHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCellMarginHorizontal = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginHorizontal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCellMarginVertical = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mCellMarginVertical:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTileVerticalMargin = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileVerticalMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTileLayoutHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mTileLayoutHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
