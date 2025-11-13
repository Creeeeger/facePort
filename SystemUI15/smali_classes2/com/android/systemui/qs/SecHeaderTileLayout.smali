.class public final Lcom/android/systemui/qs/SecHeaderTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClippingBounds:Landroid/graphics/Rect;

.field public final mContext:Landroid/content/Context;

.field public mOrientation:I

.field public final mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;->updateResources()Z

    const-string v0, "open_anim"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/qs/SecTileLayout;

    new-instance v2, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v3, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v4, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v5, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;)V

    new-instance v6, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v7, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda6;

    invoke-direct {v7, p1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 p1, 0x5

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v9, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;)V

    iget-object v10, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 p1, 0x6

    invoke-direct {v11, p0, p1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v12, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;

    const/4 p1, 0x1

    invoke-direct {v12, p0, p1}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V

    new-instance v13, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda1;

    invoke-direct {v13, p0}, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/SecHeaderTileLayout;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/systemui/qs/SecTileLayout;-><init>(Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/IntSupplier;Ljava/util/function/IntFunction;Ljava/util/ArrayList;Ljava/util/function/IntSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BiFunction;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    return-void
.end method


# virtual methods
.method public final addTileView$1(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mOrientation:I

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;->updateResources()Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecHeaderTileLayout;->updateResources()Z

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    const/16 p2, 0x2710

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput p3, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int v0, p1, p5

    sub-int v0, p4, v0

    if-lez v0, :cond_1

    add-int/lit8 p4, p1, -0x1

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/2addr v0, p4

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    goto :goto_1

    :cond_1
    if-nez p5, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    div-int p5, p4, p5

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, p2, :cond_4

    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    goto :goto_1

    :cond_4
    iget p5, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    mul-int/2addr p5, p1

    sub-int/2addr p4, p5

    sub-int/2addr p1, p2

    div-int/2addr p4, p1

    iput p4, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    :goto_1
    move p1, p3

    :goto_2
    iget-object p4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/16 p5, 0x8

    if-ge p1, p4, :cond_6

    iget-object p4, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p4, p4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    if-ge p1, v0, :cond_5

    move p5, p3

    :cond_5
    invoke-virtual {p4, p5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p4, p0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, p5, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, p4}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object p4

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget-object p4, p1, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {p4}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p4

    new-instance p5, Lcom/android/systemui/qs/SecTileLayout$Counter;

    iget-object v0, p1, Lcom/android/systemui/qs/SecTileLayout;->rowsSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    mul-int/2addr v0, p4

    if-le p0, v0, :cond_9

    move p0, v0

    :cond_9
    invoke-direct {p5, p0, p4}, Lcom/android/systemui/qs/SecTileLayout$Counter;-><init>(II)V

    iget-object p0, p1, Lcom/android/systemui/qs/SecTileLayout;->getLayoutDirectionSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    if-ne p0, p2, :cond_a

    move p0, p2

    goto :goto_4

    :cond_a
    move p0, p3

    :goto_4
    iget-object v0, p1, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/SecTileLayout;->cellHeightSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    :cond_b
    :goto_5
    iget v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->indices:I

    if-ge v2, v3, :cond_d

    if-eqz p0, :cond_c

    iget v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    sub-int v2, p4, v2

    sub-int/2addr v2, p2

    goto :goto_6

    :cond_c
    iget v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    :goto_6
    iget-object v3, p1, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v3

    iget-object v4, p1, Lcom/android/systemui/qs/SecTileLayout;->cellMarginHorizontalSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v4}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v4

    add-int/2addr v4, v3

    mul-int/2addr v4, v2

    iget-object v2, p1, Lcom/android/systemui/qs/SecTileLayout;->sidePaddingSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v2

    add-int/2addr v2, v4

    iget-object v3, p1, Lcom/android/systemui/qs/SecTileLayout;->getRowTopFunction:Ljava/util/function/IntFunction;

    iget v4, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->row:I

    invoke-interface {v3, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p1, Lcom/android/systemui/qs/SecTileLayout;->records:Ljava/util/ArrayList;

    iget v5, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v6, v2, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v4, v2, v5, v6, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    add-int/2addr v2, p2

    iput v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->index:I

    iget v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    add-int/2addr v2, p2

    iput v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    iget v3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->columns:I

    if-ne v2, v3, :cond_b

    iput p3, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->column:I

    iget v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->row:I

    add-int/2addr v2, p2

    iput v2, p5, Lcom/android/systemui/qs/SecTileLayout$Counter;->row:I

    goto :goto_5

    :cond_d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileLayout;->mListening:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    if-eqz v0, :cond_1

    move p1, v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    sget-object v2, Lcom/android/systemui/qs/QSEvent;->QQS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    invoke-interface {p2, v2, v1, v3, v0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileImageSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/qs/SecHeaderTileLayout;->mOrientation:I

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelStartEndPadding(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    :cond_0
    return v1
.end method
