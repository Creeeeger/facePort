.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final callbacks:Ljava/util/Collection;

.field public final listeningClients:Ljava/util/Collection;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;

.field public final qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

.field public stateJob:Lkotlinx/coroutines/Job;

.field public final tileAdapterJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsHost:Lcom/android/systemui/qs/QSHost;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    new-instance p3, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, p3, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->tileAdapterJob:Lkotlinx/coroutines/Job;

    invoke-interface {p2}, Lcom/android/systemui/qs/QSHost;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->userSwitch(I)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final click(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->isActionSupported(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;-><init>(Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->onActionPerformed(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->stateJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->tileAdapterJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->destroy()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    instance-of v1, v0, Lcom/android/systemui/Dumpable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/Dumpable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": QSTileViewModel isn\'t dumpable"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getInstanceId()Lcom/android/internal/logging/InstanceId;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->instanceId:Lcom/android/internal/logging/InstanceId;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$Companion;->mapState(Landroid/content/Context;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;)Lcom/android/systemui/plugins/qs/QSTile$AdapterState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->uiConfig:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;

    instance-of v2, v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Empty;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    if-nez p0, :cond_2

    :cond_0
    const-string p0, ""

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;

    iget v0, v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;->labelRes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final getTileSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isActionSupported(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->isAvailable()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isListening()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final isTileReady()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final longClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->isActionSupported(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;-><init>(Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->onActionPerformed(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)V

    :cond_0
    return-void
.end method

.method public final refreshState()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->forceUpdate()V

    return-void
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->callbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final secondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->isActionSupported(Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;-><init>(Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->onActionPerformed(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)V

    :cond_0
    return-void
.end method

.method public final setDetailListening(Z)V
    .locals 0

    return-void
.end method

.method public final setListening(Ljava/lang/Object;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->getState()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$setListening$lambda$4$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$setListening$lambda$4$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$setListening$1$2;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$setListening$1$2;-><init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v1, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->stateJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->listeningClients:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->stateJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final setTileSpec(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tile spec is immutable in new tiles"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final userSwitch(I)V
    .locals 0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsTileViewModel:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;->onUserChanged(Landroid/os/UserHandle;)V

    return-void
.end method
