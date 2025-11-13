.class public final Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractor;


# instance fields
.field public final _currentSpecsAndTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _userContext:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentUser:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final customTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

.field public final customTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public final featureFlags:Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;

.field public final installedPackagesWithTiles:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

.field public final logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final minimumTilesRepository:Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesRepository;

.field public final retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final specsToTiles:Ljava/util/Map;

.field public final tileFactory:Lcom/android/systemui/plugins/qs/QSFactory;

.field public final tileLifecycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

.field public final tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

.field public final userAndTiles:Lkotlinx/coroutines/flow/Flow;

.field public final userContext:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesRepository;Lcom/android/systemui/retail/data/repository/RetailModeRepository;Lcom/android/systemui/qs/external/CustomTileStatePersister;Ldagger/Lazy;Lcom/android/systemui/plugins/qs/QSFactory;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/settings/UserTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;",
            "Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;",
            "Lcom/android/systemui/user/data/repository/UserRepository;",
            "Lcom/android/systemui/qs/pipeline/data/repository/MinimumTilesRepository;",
            "Lcom/android/systemui/retail/data/repository/RetailModeRepository;",
            "Lcom/android/systemui/qs/external/CustomTileStatePersister;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            "Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;",
            "Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;",
            "Lcom/android/systemui/qs/pipeline/shared/QSPipelineFlagsRepository;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->tileFactory:Lcom/android/systemui/plugins/qs/QSFactory;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v2, p11

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;)V

    invoke-static {v3, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;-><init>(ILjava/util/List;)V

    invoke-static {v2, v5}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    move-object/from16 v2, p13

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$2;

    invoke-direct {v1, v4, p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;)V

    invoke-static {v3, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    invoke-static {}, Lcom/android/systemui/Flags;->qsNewPipeline()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "CurrentTileInteractorImpl:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "User: "

    invoke-static {v1, v0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;

    iget-object v1, v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/Dumpable;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dumpable;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;

    iget-object v1, v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$State;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/systemui/qs/TileStateToProtoKt;->toProto(Lcom/android/systemui/plugins/qs/QSTile$State;)Lcom/android/systemui/qs/nano/QsTileState;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/qs/nano/QsTileState;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/systemui/qs/nano/QsTileState;

    iput-object p0, p1, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    return-void
.end method
