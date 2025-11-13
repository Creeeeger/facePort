.class public final synthetic Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$1;->$tmp0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$1;->$tmp0:Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;

    sget v0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->$r8$clinit:I

    iget v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->collapsedBarRow:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barOrderInteractor:Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;

    iget-object v2, v1, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setCollapsedBarRow(I)V

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendCollapsedRowStatusLog()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->addHiddenBarsToList()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->barList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object v3, v2, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->host:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v3, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v1, :cond_0

    iget v2, v2, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    iput v2, v1, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRowSettingValue:I

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->updateHeightMargins()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setBarOrder(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendOrderStatusLog()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->applyBarOrder()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;->close()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->doneCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
