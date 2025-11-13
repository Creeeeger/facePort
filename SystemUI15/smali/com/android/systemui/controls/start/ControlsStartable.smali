.class public final Lcom/android/systemui/controls/start/ControlsStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final packageChangeInteractor:Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;

.field public packageJob:Lkotlinx/coroutines/Job;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;Landroid/os/UserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/util/ControlsUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/controls/start/ControlsStartable;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/controls/start/ControlsStartable;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p4, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iput-object p5, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/controls/start/ControlsStartable;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    iput-object p7, p0, Lcom/android/systemui/controls/start/ControlsStartable;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    iput-object p8, p0, Lcom/android/systemui/controls/start/ControlsStartable;->packageChangeInteractor:Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;

    iput-object p9, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userManager:Landroid/os/UserManager;

    iput-object p10, p0, Lcom/android/systemui/controls/start/ControlsStartable;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p11, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    new-instance p1, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;-><init>(Lcom/android/systemui/controls/start/ControlsStartable;)V

    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userTrackerCallback:Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;

    return-void
.end method

.method public static final access$startForUser(Lcom/android/systemui/controls/start/ControlsStartable;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.controls.ControlsProviderService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const v5, 0xc0084

    int-to-long v5, v5

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v5, v6, v4}, Lcom/android/systemui/controls/ControlsServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->updateServices(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    check-cast v0, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast v0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v2, "controls_prefs"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "should_add_default_panel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v2, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsController:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFavoritesComponent()Ljava/util/List;

    move-result-object v3

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getPreferredComponentSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION:Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v5, v5, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controls/start/ControlsStartable;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    check-cast v2, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f030035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v7, v7, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_6
    move-object v6, v1

    :goto_2
    check-cast v6, Lcom/android/systemui/controls/ControlsServiceInfo;

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_7
    move-object v6, v1

    :goto_3
    if-eqz v6, :cond_8

    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/SecControlsController;

    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    new-instance v3, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {v3, v2}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    check-cast v0, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/controls/start/ControlsStartable;->bindToPanelInternal()V

    goto :goto_5

    :cond_9
    new-instance v4, Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/start/ControlsStartable$bindToPanel$1;-><init>(Lcom/android/systemui/controls/start/ControlsStartable;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/android/systemui/controls/start/ControlsStartable;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v6, p0, Lcom/android/systemui/controls/start/ControlsStartable;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const/16 v10, 0x30

    invoke-static/range {v3 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->packageJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_a

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/controls/start/ControlsStartable;->packageChangeInteractor:Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, v2, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;->userInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->selectedUser:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor$packageChanged$$inlined$flatMapLatest$1;

    invoke-direct {v3, v1, v2, v1}, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor$packageChanged$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    goto :goto_6

    :cond_b
    iget-object v2, v2, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;->packageChangeRepository:Lcom/android/systemui/common/data/repository/PackageChangeRepository;

    check-cast v2, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;->packageChanged(Landroid/os/UserHandle;)Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$packageChanged$$inlined$filter$1;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor$packageChangedInternal$$inlined$filter$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor$packageChangedInternal$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)V

    move-object v0, v2

    :goto_6
    new-instance v2, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filterIsInstance$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/controls/start/ControlsStartable;)V

    new-instance v2, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$2;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/controls/start/ControlsStartable$monitorPackageUninstall$2;-><init>(Lcom/android/systemui/controls/start/ControlsStartable;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/start/ControlsStartable;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->packageJob:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final bindToPanelInternal()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v1, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->secControlsController:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFavoritesComponent()Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->getPreferredComponentSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

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

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v5, v5, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v4, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    iget-object v5, v5, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    check-cast v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    iget-object v2, v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "com.samsung.android.oneconnect"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v0, v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;->componentName:Landroid/content/ComponentName;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-boolean v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/controls/start/ControlsStartable$onBootCompleted$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/start/ControlsStartable$onBootCompleted$1;-><init>(Lcom/android/systemui/controls/start/ControlsStartable;)V

    iget-object v1, p0, Lcom/android/systemui/controls/start/ControlsStartable;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userTrackerCallback:Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;

    iget-object p0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method
