.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activity:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

.field public appName:Ljava/lang/CharSequence;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public cancelLoadRunnable:Ljava/lang/Runnable;

.field public component:Landroid/content/ComponentName;

.field public final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public controlsListLayout:Landroid/widget/LinearLayout;

.field public controlsMap:Ljava/util/Map;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public currentFavorites:Ljava/util/List;

.field public currentOrder:Ljava/util/List;

.field public currentPosition:Landroid/os/Parcelable;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

.field public final initialFavoriteIds:Ljava/util/Set;

.field public isAutoRemove:Z

.field public isFromMainActivity:Z

.field public isLoadingFinished:Z

.field public isPagerLoaded:Z

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public listView:Landroidx/recyclerview/widget/RecyclerView;

.field public loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

.field public noItemsLayout:Landroid/widget/LinearLayout;

.field public requestOrder:Ljava/util/List;

.field public retryDialog:Landroidx/appcompat/app/AlertDialog;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final secController:Lcom/android/systemui/controls/controller/SecControlsController;

.field public structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

.field public structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/SecControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/util/SALogger;)V
    .locals 0

    invoke-direct {p0, p4, p2, p7, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->secController:Lcom/android/systemui/controls/controller/SecControlsController;

    iput-object p4, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p6, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p8, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    iput-object p9, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    new-instance p1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    invoke-direct {p1}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$favoriteControlChangeMainCallback$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    return-void
.end method


# virtual methods
.method public final changeDataAndShow()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecControlsFavoritingActivity"

    return-object p0
.end method

.method public final loadForComponent(Lcom/android/systemui/controls/controller/ControlsController$LoadData;Z)V
    .locals 8

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    iget-object v0, p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->allControls:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    iget-object v4, v3, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v4}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->favoritesIds:Ljava/util/List;

    :cond_1
    move-object v5, v1

    iget-boolean p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->errorOnLoad:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$showErrorDialog$1;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v4, v4, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isAutoRemove:Z

    if-eqz v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v2, v2, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ControlStatus;

    sget-object v2, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    iget-object v1, v1, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    move-object p1, v4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    iget-object v2, v2, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v2, ""

    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v6, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move-object p1, v0

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :cond_d
    sget-object v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$1;->INSTANCE:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$1;

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->changeDataAndShow()V

    goto :goto_7

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadForComponent$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadForComponent$4;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "OrderList"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    new-instance p3, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$onActivityResult$1$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$onActivityResult$1$1;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$refreshStructureOrdering$2;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBackKeyPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->updateFavorites()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_app_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Lcom/android/systemui/controls/ui/SecControlsActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isFromMainActivity:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate isFromMainActivity = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", class = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SecControlsFavoritingActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    const-string v0, "current_favorites"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    const-string/jumbo v0, "structure_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentPosition:Landroid/os/Parcelable;

    :cond_1
    const p1, 0x7f0d001f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0d52

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    const p1, 0x7f0a0688

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getWidthPercentBasic(F)F

    move-result v2

    invoke-virtual {v3, v2, p1}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(FLandroid/view/View;)V

    const p1, 0x7f0a02f0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a07e1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    move-object p1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    move-object p1, v2

    :cond_4
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f0a0c2b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const v3, 0x7f0d00c3

    invoke-virtual {p1, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    new-instance p1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    iget-object v3, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v8

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentPosition:Landroid/os/Parcelable;

    if-eqz v3, :cond_5

    move-object v9, p1

    goto :goto_1

    :cond_5
    move-object v9, v2

    :goto_1
    new-instance p1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    iget-object v7, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    iget-object v5, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v6, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    const p1, 0x7f0a0640

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    if-nez v3, :cond_6

    move-object v3, v2

    :cond_6
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->listView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    if-eqz p1, :cond_7

    iget-object p1, p1, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object p1, v2

    :goto_2
    instance-of v3, p1, Lcom/android/systemui/controls/management/SaveWrapper;

    if-eqz v3, :cond_8

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/controls/management/SaveWrapper;

    :cond_8
    if-eqz v2, :cond_a

    iget-object p1, v2, Lcom/android/systemui/controls/management/SaveWrapper;->data:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    if-eqz p1, :cond_9

    move v1, v0

    :cond_9
    iput-boolean v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isPagerLoaded:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->loadForComponent(Lcom/android/systemui/controls/controller/ControlsController$LoadData;Z)V

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object p1, Lcom/android/systemui/controls/util/SALogger$Screen$ChooseDevices;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$ChooseDevices;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    const/high16 v0, 0x7f0f0000

    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return v1
.end method

.method public final onDestroy()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/ControlStatus;

    iget-boolean v9, v9, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    if-eqz v9, :cond_2

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v1, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    iget-object v8, v8, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v8}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v8, ""

    :cond_4
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_7
    move v7, v1

    move v9, v2

    move v8, v3

    move v10, v4

    goto :goto_3

    :cond_8
    move v7, v1

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_3
    new-instance v0, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/controls/util/SALogger$Event$LeftChooseDevices;-><init>(Ljava/lang/String;IIII)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    :cond_9
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a09b9

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/controls/management/SecControlsReorderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "extra_structure_lists"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    sget-object v1, Lcom/android/systemui/controls/util/SALogger$Event$Reorder;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Event$Reorder;

    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    const/16 p1, 0x3e8

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_2
    :goto_0
    return v2
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isPagerLoaded:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iget-object v5, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-object v0, v1, Lcom/android/systemui/controls/management/adapter/SecStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    new-instance v2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$2;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    new-instance v3, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$3;-><init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V

    iget-object v4, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->secController:Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isPagerLoaded:Z

    :cond_2
    return-void
.end method

.method public final onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/systemui/controls/management/SaveWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/SaveWrapper;-><init>(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V

    return-object v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "current_favorites"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->listView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    :cond_4
    const-string/jumbo v0, "structure_position"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final updateFavorites()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isLoadingFinished:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->structureModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/systemui/controls/controller/ControlInfo;

    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/controls/ControlStatus;

    iget-object v9, v9, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v9}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v4, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v6, v6, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->secController:Lcom/android/systemui/controls/controller/SecControlsController;

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/Favorites;->getActiveFlag(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :cond_b
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    iput-boolean v2, v4, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isFromMainActivity:Z

    check-cast v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/controls/controller/Favorites;->removeStructures(Landroid/content/ComponentName;Z)Z

    goto :goto_6

    :cond_d
    new-instance v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->isFromMainActivity:Z

    check-cast v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v3, v1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V

    :goto_6
    return-void
.end method
