.class public final Lcom/android/systemui/qs/customize/CustomActionMoveItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final actionCancelConsumer:Ljava/util/function/Consumer;

.field public final context:Landroid/content/Context;

.field public final destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final isAvailableSource:Z

.field public final moveToSourceConsumer:Ljava/util/function/BiConsumer;

.field public final moveToTargetConsumer:Ljava/util/function/BiConsumer;

.field public final source:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public final sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/CustomActionMoveItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomActionMoveItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;ZLjava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/customize/CustomTileInfo;",
            "Lcom/android/systemui/qs/customize/CustomizerTileViewPager;",
            "Lcom/android/systemui/qs/customize/CustomizerTileViewPager;",
            "Z",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/systemui/qs/customize/CustomTileInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/qs/customize/CustomTileInfo;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/systemui/qs/customize/CustomTileInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/systemui/qs/customize/CustomTileInfo;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-boolean p5, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->isAvailableSource:Z

    iput-object p7, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionCancelConsumer:Ljava/util/function/Consumer;

    iput-object p8, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToSourceConsumer:Ljava/util/function/BiConsumer;

    iput-object p9, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToTargetConsumer:Ljava/util/function/BiConsumer;

    if-eqz p10, :cond_2

    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CSTMPagedTileLayout"

    const-string p2, "addDummyTile"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iget-object p3, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->isFull()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addPage()V

    :cond_1
    new-instance p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/customize/CustomTileInfo;-><init>()V

    iput-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    new-instance p3, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p3}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    iput-object p3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    const-string p3, "dummy"

    iput-object p3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const/4 p3, 0x0

    iput-boolean p3, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object p2, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p3, p2, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription(Lcom/android/systemui/qs/customize/CustomTileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p3, p2, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription(Lcom/android/systemui/qs/customize/CustomTileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object p2, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    move-result p2

    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p6, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final getContentDescription$getContentDescription(Lcom/android/systemui/qs/customize/CustomActionMoveItem;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnMaxCountInPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    move-result p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    rem-int/2addr p2, v0

    rem-int v0, p2, p1

    div-int/2addr p2, p1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionFinish()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, v1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, v1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CSTMPagedTileLayout"

    const-string v3, "removeDummyTile"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    iget-object v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removePage()V

    :cond_4
    iput-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionCancelConsumer:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final getContentDescription(Lcom/android/systemui/qs/customize/CustomTileInfo;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const v1, 0x7f130e36

    const v2, 0x7f130e37

    if-ltz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->isAvailableSource:Z

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription$getContentDescription(Lcom/android/systemui/qs/customize/CustomActionMoveItem;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->isAvailableSource:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription$getContentDescription(Lcom/android/systemui/qs/customize/CustomActionMoveItem;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public final getDestinations()Ljava/util/ArrayList;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSources()Ljava/util/ArrayList;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-string v1, "CustomActionMoveItem"

    if-ltz v0, :cond_3

    const-string p1, "move to source="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToSourceConsumer:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ltz p1, :cond_4

    const-string v0, "move to target="

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToTargetConsumer:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    return-void
.end method
