.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $serviceInfos:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    const-string v2, "ControlsControllerImpl"

    if-eq v0, v1, :cond_0

    const-string p0, "onServiceUpdate user diff, update skipped"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v4, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v5, v5, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    check-cast v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v5, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    sget-object v6, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;->toPackagesSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;->toPackagesSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v10

    :goto_2
    if-eqz v8, :cond_5

    invoke-interface {v6, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v6, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v10

    :goto_3
    if-eqz v5, :cond_7

    invoke-interface {v6, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-static {v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;->toPackagesSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    iget-object v6, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    move-object v10, v5

    :cond_8
    if-eqz v10, :cond_9

    iget-object v5, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {v5, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_9
    new-instance v5, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;

    invoke-direct {v5, v4}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    iget-object v6, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v6, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v5, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    const-string v6, "ControlsBadgeRequired"

    const-string v8, "badgeRequiredSet"

    invoke-static {v4, v5, v6, v8}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->onServicesUpdated$flush(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    const-string v6, "ControlsBadgeNotRequired"

    const-string v8, "badgeNotRequiredSet"

    invoke-static {v4, v5, v6, v8}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->onServicesUpdated$flush(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->$serviceInfos:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/ControlsServiceInfo;

    sget-object v8, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v9, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/controls/controller/Favorites;->getActiveFlag(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v9, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "com.google.android.apps.chromecast.app"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "com.samsung.android.oneconnect"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_b
    iget-object v8, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v9, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    check-cast v9, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v9, v9, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    invoke-static {v8}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;->getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object v9

    if-nez v9, :cond_c

    new-instance v9, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    new-instance v10, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    invoke-direct {v9, v10}, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    check-cast v8, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v8, v9}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;)V

    :cond_c
    iget-object v8, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v8, v7}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->setActivePanelFlag(Landroid/content/ComponentName;Z)V

    iget-object v6, v6, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    iget-object v8, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    check-cast v8, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    invoke-virtual {v8, v6}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->addAuthorizedPanels(Ljava/util/Set;)V

    invoke-virtual {v5}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_4

    :cond_d
    new-instance v6, Lcom/android/systemui/controls/controller/ControlsControllerImpl$saveCurrentFavorites$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$saveCurrentFavorites$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    iget-object v8, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v8, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v5, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    check-cast v5, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v6, "controls_prefs"

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v6, "SeedingCompleted"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v5, :cond_10

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    goto :goto_6

    :cond_10
    sget-object v4, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_6
    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    sget-object v8, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5}, Lcom/android/systemui/controls/controller/Favorites;->removeStructures(Landroid/content/ComponentName;Z)Z

    iget-object v8, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    check-cast v8, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;

    invoke-direct {v9, v8, v6}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/content/ComponentName;)V

    iget-object v6, v8, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v6, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move v6, v7

    goto :goto_7

    :cond_11
    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_15

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    iget-object v8, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->getCachedFavoritesAndRemoveFor(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_12

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    sget-object v8, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    goto :goto_9

    :cond_13
    move v6, v7

    goto :goto_8

    :cond_14
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->getCachedFavoritesAndRemoveFor(Landroid/content/ComponentName;)Ljava/util/List;

    goto :goto_a

    :cond_15
    if-eqz v6, :cond_16

    const-string v0, "Detected change in available services, storing updated favorites"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$listingCallback$1$onServicesUpdated$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    :cond_16
    :goto_b
    return-void
.end method
