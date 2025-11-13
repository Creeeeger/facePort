.class public final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModel;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

.field public final disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final forceUpdates:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final isAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mapper:Lkotlin/jvm/functions/Function0;

.field public final qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

.field public final qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

.field public final state:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tileData:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final tileDataInteractor:Lkotlin/jvm/functions/Function0;

.field public final tileScope:Lkotlinx/coroutines/CoroutineScope;

.field public final userActionInteractor:Lkotlin/jvm/functions/Function0;

.field public final userInputs:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final users:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;",
            "Lcom/android/systemui/user/data/repository/UserRepository;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;",
            "Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->userActionInteractor:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileDataInteractor:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->mapper:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->qsTileAnalytics:Lcom/android/systemui/qs/tiles/base/analytics/QSTileAnalytics;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    check-cast p6, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p6}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->users:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-static {p2, p2, p3, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->userInputs:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2, p2, p3, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->forceUpdates:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$createTileDataFlow$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    const/4 p7, 0x1

    invoke-static {p2, p12, p6, p7}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileData:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p6, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$special$$inlined$map$1;

    invoke-direct {p6, p2, p0}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;)V

    invoke-static {p6, p11}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    invoke-static {p2, p12, p6, p7}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->state:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1, p11}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p12, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->isAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->state:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final forceUpdate()V
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$forceUpdate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$forceUpdate$1;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getConfig()Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    return-object p0
.end method

.method public final getState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->state:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-object p0
.end method

.method public final isAvailable()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->isAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final onActionPerformed(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileData:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->state:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logUserAction(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/pipeline/shared/TileSpec;ZZ)V

    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$onActionPerformed$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$onActionPerformed$1;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->tileScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onUserChanged(Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->users:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
