.class public final Lcom/android/systemui/qs/SecTileChunkLayout;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;


# instance fields
.field public final cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

.field public final cellMargin:Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

.field public columns:I

.field public final context:Landroid/content/Context;

.field public fraction:F

.field public oldListening:Z

.field public final records:Ljava/util/ArrayList;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public rowSpace:I

.field public rows:I

.field public sidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    new-instance p1, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    invoke-direct {p1, v1, v1, v1}, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;-><init>(III)V

    iput-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cellMargin:Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->oldListening:Z

    iget-object v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    instance-of p0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    if-eqz p0, :cond_0

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->saveTileIconAsImage()V

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    iget p5, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    iget v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    mul-int/2addr p5, v0

    if-le p1, p5, :cond_1

    move p1, p5

    :cond_1
    move p5, p4

    move v0, p5

    move v1, v0

    :goto_1
    if-ge p5, p1, :cond_4

    iget v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    if-ne v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    move v0, p4

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rowSpace:I

    mul-int/2addr v3, v1

    if-eqz p2, :cond_3

    iget v4, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, p3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v5, v5, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    iget-object v6, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cellMargin:Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    iget v6, v6, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    add-int/2addr v6, v5

    mul-int/2addr v6, v4

    iget v4, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->sidePadding:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v6, v3, v5, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    invoke-virtual {v2, p5}, Lcom/android/systemui/plugins/qs/QSTileView;->setPosition(I)V

    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    iget-object p2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->sidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v2, v2, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    div-int v2, v0, v2

    const/4 v3, 0x1

    if-ge v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    iget-object v1, v1, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-le v2, v1, :cond_2

    move v2, v1

    :cond_2
    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    div-int v1, p2, v2

    iput v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    rem-int/2addr p2, v2

    if-eqz p2, :cond_3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cellMargin:Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    const/4 v1, 0x0

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v4, v4, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    mul-int/2addr v4, v2

    sub-int/2addr v0, v4

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    :goto_2
    iput v0, p2, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->horizontal:I

    iget-object p2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget p2, p2, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->height:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    new-instance v4, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v2, Lcom/android/systemui/qs/SecTileChunkLayout$onMeasure$1;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$onMeasure$1;

    invoke-static {v4, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/qs/SecTileChunkLayout$onMeasure$2;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$onMeasure$2;

    new-instance v5, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v5, v2, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {v2, v5}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    move-object v5, p0

    move v4, v1

    :goto_3
    iget-object v6, v2, Lkotlin/sequences/TransformingSequence$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTileView;

    iget v7, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    if-ne v4, v7, :cond_5

    move v4, v1

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v7, v7, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v6, v5}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iput v6, v7, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->height:I

    add-int/2addr v4, v3

    goto :goto_3

    :cond_6
    iget p2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rowSpace:I

    iget v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    mul-int/2addr p2, v0

    if-gez p2, :cond_7

    goto :goto_4

    :cond_7
    move v1, p2

    :goto_4
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setFraction(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->fraction:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateExpandableVariables(F)V

    iget p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->fraction:F

    iget-object p0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p0, Lcom/android/systemui/qs/SecTileChunkLayout$setLabelAlpha$1;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$setLabelAlpha$1;

    invoke-static {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/SecTileChunkLayout$setLabelAlpha$2;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$setLabelAlpha$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->labelContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setLabelVisibility(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object p0, Lcom/android/systemui/qs/SecTileChunkLayout$setLabelVisibility$1;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$setLabelVisibility$1;

    invoke-static {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/SecTileChunkLayout$setLabelVisibility$2;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$setLabelVisibility$2;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0810b4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->iconView:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/LabelTileView;->commonTileView:Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSCommonTileView;->tileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->oldListening:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->oldListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->oldListening:Z

    invoke-interface {p2, p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateExpandableVariables(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v1, v0, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->heightCollapsed:I

    iget v2, v0, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->heightExpanded:I

    sub-int v3, v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v3, v1

    iput v3, v0, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->height:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cellMargin:Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    iget v3, v0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    add-int/2addr v1, v3

    iget v0, v0, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rowSpace:I

    return-void
.end method

.method public final updateFocusForTiles(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v0, Lkotlin/sequences/IndexingSequence;

    invoke-direct {v0, v1}, Lkotlin/sequences/IndexingSequence;-><init>(Lkotlin/sequences/Sequence;)V

    sget-object v1, Lcom/android/systemui/qs/SecTileChunkLayout$updateFocusForTiles$1;->INSTANCE:Lcom/android/systemui/qs/SecTileChunkLayout$updateFocusForTiles$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v1, v0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :goto_0
    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/collections/IndexedValue;

    iget v2, v0, Lkotlin/collections/IndexedValue;->index:I

    iget-object v0, v0, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v3, v0, Lcom/android/systemui/qs/tileimpl/LabelTileView;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/systemui/qs/tileimpl/LabelTileView;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    mul-int/2addr v3, p1

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    or-int/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateResources()Z
    .locals 6

    iget v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->fraction:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateExpandableVariables(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->setLabelVisibility(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileExpandedSidePadding(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->sidePadding:I

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget-object v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileExpandedWidth(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    iget-object v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconSize(Landroid/content/Context;)I

    move-result v1

    iput v1, v2, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->heightCollapsed:I

    iget-object v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileExpandedHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v2, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->heightExpanded:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cellMargin:Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;

    const v3, 0x7f071720

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalCollapsed:I

    const v3, 0x7f071721

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Lcom/android/systemui/qs/SecTileChunkLayout$CellMargin;->verticalExpanded:I

    iget v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->sidePadding:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v4, v4, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    div-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    iget-object v3, v3, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    :goto_1
    iput v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->records:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->columns:I

    div-int v5, v2, v3

    iput v5, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_3

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->rows:I

    :cond_3
    if-eq v3, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    move v0, v4

    :cond_4
    return v0
.end method

.method public final updateTileWidth(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->tileExpandedWidthRatio:F

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget-object v1, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileExpandedWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecTileChunkLayout;->cell:Lcom/android/systemui/qs/SecTileChunkLayout$Cell;

    iget v0, v0, Lcom/android/systemui/qs/SecTileChunkLayout$Cell;->width:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateTileWidth(ratio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") -> mCellWidth:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecTileChunkLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateResources()Z

    return-void
.end method
