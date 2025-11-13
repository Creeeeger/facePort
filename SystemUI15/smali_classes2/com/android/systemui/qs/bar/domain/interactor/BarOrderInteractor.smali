.class public final Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public host:Lcom/android/systemui/qs/QSPanelHost;

.field public final landscapeBarParents:Ljava/util/ArrayList;

.field public final landscapeBars:Ljava/util/ArrayList;

.field public lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

.field public final repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

.field public final systemUIContext:Landroid/content/Context;

.field public final userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/repository/BarOrderRepository;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->systemUIContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBars:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->landscapeBarParents:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$userChanged$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$userChanged$1;-><init>(Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

    return-void
.end method


# virtual methods
.method public final applyBarOrder()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->host:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelHost;->isHeader()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->getBarViewsByOrder()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object v3, v2, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v2, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->nonEditableBars:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/bar/BarItemImpl;

    instance-of v6, v5, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "applyBarOrder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BarOrderInteractor"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->host:Lcom/android/systemui/qs/QSPanelHost;

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanelHost;->mTargetView:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanelHost;->setBarsToPanel(Ljava/util/List;)V

    iget-object v0, v1, Lcom/android/systemui/qs/QSPanelHost;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v3, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz v0, :cond_8

    iget v2, v2, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    iput v2, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mCollapsedRowSettingValue:I

    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->updateHeightMargins()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->updateLastShowingBar()V

    return-void
.end method

.method public final getBarViewsByOrder()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object v2, v1, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v1, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->nonEditableBars:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/BarItemImpl;

    instance-of v3, v2, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    iget-object v2, v2, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_5
    iget-object v2, v2, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public final initValuesAndApply(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BarOrderRepository"

    const-string v1, "initValues()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->loadBarOrder()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setBarOrder(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->loadCollapsedBarRow()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->setCollapsedBarRow(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendOrderStatusLog()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->sendCollapsedRowStatusLog()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$initValuesAndApply$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor$initValuesAndApply$1;-><init>(Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final sendCollapsedRowStatusLog()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->systemUIContext:Landroid/content/Context;

    const-string v1, "quick_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget p0, p0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->collapsedBarRow:I

    const-string v1, "Number, "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v1, "QPPS1029"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final sendOrderStatusLog()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->systemUIContext:Landroid/content/Context;

    const-string v1, "quick_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object v1, v1, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v3, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_9

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "BrightnessVolumeBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "Brightness, Sound"

    goto :goto_1

    :sswitch_1
    const-string v6, "QuickControlBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "Remote control"

    goto :goto_1

    :sswitch_2
    const-string v6, "BottomLargeTileBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "Nearby devices, Device control"

    goto :goto_1

    :sswitch_3
    const-string v6, "QSMediaPlayerBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "Media player"

    goto :goto_1

    :sswitch_4
    const-string v6, "TopLargeTileBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "Wi-Fi, Bluetooth"

    goto :goto_1

    :sswitch_5
    const-string v6, "TileChunkLayoutBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, "Full quick settings chunk"

    goto :goto_1

    :sswitch_6
    const-string v6, "MultiSIMPreferredSlotBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "Multi sim"

    goto :goto_1

    :sswitch_7
    const-string v6, "SmartViewLargeTileBar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const-string v4, "Smart View, Modes"

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rowName, "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", position, "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :cond_8
    move v2, v5

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_a
    if-eqz v0, :cond_b

    const-string p0, "QPPS1028"

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75486a28 -> :sswitch_7
        -0x16f9456e -> :sswitch_6
        -0xc67c4f6 -> :sswitch_5
        -0x7322b61 -> :sswitch_4
        0x359434b0 -> :sswitch_3
        0x460e20b5 -> :sswitch_2
        0x4ea0bb23 -> :sswitch_1
        0x5d969528 -> :sswitch_0
    .end sparse-switch
.end method

.method public final toBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItemImpl;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->host:Lcom/android/systemui/qs/QSPanelHost;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelHost;->getBarItems()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/android/systemui/qs/bar/BarItemImpl;

    :cond_2
    return-object v0
.end method

.method public final toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;
    .locals 4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object v3, v3, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->nonEditableBars:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final updateLastShowingBar()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->repository:Lcom/android/systemui/qs/bar/repository/BarOrderRepository;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/repository/BarOrderRepository;->barOrder:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toFilteredNonEditBars(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->toBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/BarItemImpl;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/android/systemui/qs/bar/BarItemImpl;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->orignBottomMargin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz v4, :cond_c

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    goto :goto_4

    :cond_8
    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    goto :goto_5

    :cond_9
    move-object v4, v2

    :goto_5
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_a

    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-ne v5, v0, :cond_a

    goto :goto_6

    :cond_a
    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_c
    :goto_6
    iput-object v1, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/qs/bar/domain/interactor/BarOrderInteractor;->lastBar:Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    goto :goto_7

    :cond_e
    move-object p0, v2

    :goto_7
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    :cond_f
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_10

    iget p0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-nez p0, :cond_10

    goto :goto_8

    :cond_10
    if-nez v2, :cond_11

    goto :goto_8

    :cond_11
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_8
    return-void
.end method
