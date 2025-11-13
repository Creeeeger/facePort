.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsListingController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final activityTaskManagerProxy:Lcom/android/systemui/util/ActivityTaskManagerProxy;

.field public availableServices:Ljava/util/List;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final callbacks:Ljava/util/Set;

.field public final context:Landroid/content/Context;

.field public currentUserId:I

.field public final secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

.field public serviceListing:Lcom/android/settingslib/applications/ServiceListing;

.field public final serviceListingBuilder:Lkotlin/jvm/functions/Function1;

.field public final serviceListingCallback:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

.field public final userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/ActivityTaskManagerProxy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)V
    .locals 9

    sget-object v3, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;->INSTANCE:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/ActivityTaskManagerProxy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/ActivityTaskManagerProxy;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/util/ActivityTaskManagerProxy;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingBuilder:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->activityTaskManagerProxy:Lcom/android/systemui/util/ActivityTaskManagerProxy;

    iput-object p8, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ServiceListing;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    new-instance p1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListingCallback:Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1;

    const-string p2, "Initializing"

    const-string p3, "ControlsListingControllerImpl"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p6, p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    iget-object p2, p2, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$addCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    return-void
.end method

.method public final changeUser(Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->serviceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$changeUser$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "ControlsListingController:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callbacks: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Services: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v2, v2, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getCurrentServices()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ControlsServiceInfo;

    new-instance v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v4, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->context:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/controls/ControlsServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    iget-object v2, v2, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    iput-object v2, v3, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget v3, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->userId:I

    iget v4, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final getCurrentUserId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->currentUserId:I

    return p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$removeCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateServices(Ljava/util/List;)V
    .locals 11

    const-string/jumbo v0, "updateServices "

    const-string v1, "ControlsListingControllerImpl"

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->activityTaskManagerProxy:Lcom/android/systemui/util/ActivityTaskManagerProxy;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/ActivityTaskManagerProxy;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-boolean v5, v4, Lcom/android/systemui/controls/ControlsServiceInfo;->resolved:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v4, Lcom/android/systemui/controls/ControlsServiceInfo;->resolved:Z

    iget-object v5, v4, Lcom/android/systemui/controls/ControlsServiceInfo;->_panelActivity:Landroid/content/ComponentName;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    iget-object v7, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->mPm:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    const-wide/32 v9, 0xc0000

    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v9

    iget v10, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->userId:I

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v10, "android.permission.BIND_CONTROLS"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_3

    iget-object v9, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v9

    if-eqz v9, :cond_2

    if-eq v9, v3, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    iget-boolean v7, v7, Landroid/content/pm/ActivityInfo;->enabled:Z

    :goto_1
    if-eqz v7, :cond_3

    move v8, v3

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    move-object v6, v5

    :cond_5
    iput-object v6, v4, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    invoke-static {p1}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;->getSelectedComponent$default(Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;)Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/android/systemui/controls/panels/SelectedComponentRepository$SelectedComponent;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-le v4, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is disabled, so removeSelectedComponent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {v3}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->removeSelectedComponent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, " : IllegalArgumentException = "

    const-string v5, ", so removeSelectedComponent"

    invoke-static {v0, v2, v4, v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/panels/SecSelectedComponentRepositoryImpl;->removeSelectedComponent()V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;->onServicesUpdated(Ljava/util/List;)V

    goto :goto_4

    :cond_8
    return-void
.end method
