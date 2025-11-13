.class final synthetic Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "showControlsView(Ljava/util/List;Ljava/util/List;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    const-string v4, "showControlsView"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, p2

    check-cast v1, Ljava/util/List;

    move-object/from16 v2, p0

    iget-object v2, v2, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    sget v3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "showControlsView"

    const-string v4, "SecControlsUiControllerImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->serviceInfos:Ljava/util/List;

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ui/SecSelectionItem;

    iget-boolean v8, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->isPanel:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->localeComparator:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$special$$inlined$compareBy$1;

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/controls/ui/SecSelectionItem;

    iget-object v11, v9, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v6, v9, Lcom/android/systemui/controls/ui/SecSelectionItem;->isPanel:Z

    if-nez v6, :cond_4

    instance-of v3, v3, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    goto :goto_2

    :cond_3
    move-object v8, v10

    :cond_4
    :goto_2
    check-cast v8, Lcom/android/systemui/controls/ui/SecSelectionItem;

    const/4 v11, 0x1

    if-nez v8, :cond_6

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v11

    if-eqz v3, :cond_5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/controls/ui/SecSelectionItem;

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/controls/ui/SecSelectionItem;

    :cond_6
    :goto_3
    if-eqz v8, :cond_1b

    iget-boolean v0, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->isPanel:Z

    if-eqz v0, :cond_7

    new-instance v3, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    iget-object v5, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    iget-object v6, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-direct {v3, v5, v6}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    goto :goto_6

    :cond_7
    iget-object v3, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->appName:Ljava/lang/CharSequence;

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v10

    :goto_4
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v7, v7, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v9, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->componentName:Landroid/content/ComponentName;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_a
    move-object v6, v10

    :goto_5
    check-cast v6, Lcom/android/systemui/controls/controller/ComponentInfo;

    if-nez v6, :cond_b

    sget-object v5, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    :cond_b
    new-instance v5, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    invoke-direct {v5, v3, v6}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    move-object v3, v5

    :goto_6
    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iput-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    new-instance v5, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    invoke-direct {v5, v3}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedComponentRepository:Lcom/android/systemui/controls/panels/SelectedComponentRepository;

    check-cast v3, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;

    iget-object v6, v3, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v6

    iget-object v3, v3, Lcom/android/systemui/controls/panels/SelectedComponentRepositoryImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast v3, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v7, "controls_prefs"

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v6, v5, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_c
    move-object v6, v10

    :goto_7
    const-string v7, "controls_component"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "controls_structure"

    iget-object v7, v5, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->name:Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "controls_is_panel"

    iget-boolean v5, v5, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->isPanel:Z

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_d
    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->taskViewFactory:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_f

    :cond_e
    if-nez v0, :cond_1a

    :cond_f
    iget-object v0, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    xor-int/2addr v0, v11

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    iget v5, v8, Lcom/android/systemui/controls/ui/SecSelectionItem;->uid:I

    invoke-interface {v3, v5, v0}, Lcom/android/systemui/controls/ControlsMetricsLogger;->refreshBegin(IZ)V

    const-string v0, "showMainView"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-nez v3, :cond_13

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v3, :cond_10

    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    goto :goto_8

    :cond_10
    move-object v3, v10

    :goto_8
    instance-of v4, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v4, :cond_11

    check-cast v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    goto :goto_9

    :cond_11
    move-object v3, v10

    :goto_9
    if-nez v3, :cond_12

    new-instance v12, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsActivityStarter:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v7, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v6, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    move-object v3, v12

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/controls/ui/fragment/MainFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/SecControlsUiController;)V

    :cond_12
    iput-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    :cond_13
    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-nez v4, :cond_16

    iget-object v4, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    if-eqz v4, :cond_16

    iget-object v4, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v4, :cond_16

    new-instance v4, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    iget-object v13, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/controller/ControlsController;

    check-cast v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v29

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    move-object/from16 v27, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    move-object/from16 v28, v5

    iget-object v15, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v16, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    move-object/from16 v17, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    move-object/from16 v18, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    move-object/from16 v19, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    move-object/from16 v20, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    move-object/from16 v21, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsPositionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPositionChangedCallback$1;

    move-object/from16 v22, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerTouchCallback$1;

    move-object/from16 v23, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->spinnerItemSelectionChangedCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    move-object/from16 v24, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->openAppButtonClickListener:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$openAppButtonClickListener$1;

    move-object/from16 v25, v5

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    move-object/from16 v26, v5

    move-object v12, v4

    invoke-direct/range {v12 .. v29}, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/SecControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/SecControlsUiController$ControlsPositionChangedCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;I)V

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v5, :cond_15

    iget-object v6, v5, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_14

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_14
    iput-object v4, v5, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    :cond_15
    iput-object v4, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    :cond_16
    iget-object v3, v3, Lcom/android/systemui/controls/ui/fragment/MainFragment;->panelView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_17

    iget-object v4, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelPendingIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_17

    iget-object v5, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsPanelCallback:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$controlsPanelCallback$1;->onPanelUpdated(Landroid/widget/FrameLayout;Landroid/app/PendingIntent;)V

    :cond_17
    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    if-eqz v3, :cond_18

    move-object v10, v3

    :cond_18
    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v2, v1, v10, v3}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->update(Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/ui/SelectedItem;)V

    iget-object v1, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v1, :cond_19

    iget-object v3, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    iput-object v3, v1, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->models:Ljava/util/List;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_19
    iget-object v1, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_1c

    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v3, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0a0472

    invoke-virtual {v3, v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not TaskViewFactory to display panel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1b
    const-string v0, "showControlsView selectionItem is null"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
