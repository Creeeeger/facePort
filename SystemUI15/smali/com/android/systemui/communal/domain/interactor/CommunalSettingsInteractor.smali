.class public final Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allowedByDevicePolicyForWorkProfile:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final communalBackground:Lkotlinx/coroutines/flow/Flow;

.field public final communalWidgetCategories:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final repository:Lcom/android/systemui/communal/data/repository/CommunalSettingsRepository;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/communal/data/repository/CommunalSettingsRepository;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/log/table/TableLogBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->repository:Lcom/android/systemui/communal/data/repository/CommunalSettingsRepository;

    iput-object p6, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p3, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;)V

    iget-object p5, p5, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->selectedUserInfo:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p5, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    const-class p6, Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-static {p6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p6

    invoke-static {p6}, Lcom/android/systemui/communal/data/model/CommunalEnabledState;->box-impl(Ljava/util/EnumSet;)Lcom/android/systemui/communal/data/model/CommunalEnabledState;

    move-result-object p6

    const-string v0, "disabledReason"

    invoke-static {p3, p7, v0, p6}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Lcom/android/systemui/log/table/Diffable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p6, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$map$1;

    invoke-direct {p6, p3}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p7, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p6, p1, p7, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->isCommunalEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p6, p4, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;)V

    invoke-static {p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p6

    new-instance v1, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$map$2;

    invoke-direct {v1, p6}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p6, Lcom/android/systemui/communal/data/model/CommunalWidgetCategories;->Companion:Lcom/android/systemui/communal/data/model/CommunalWidgetCategories$Companion;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lcom/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/flags/FeatureFlagsImpl;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p6, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-static {v1, p1, p7, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->communalWidgetCategories:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$3;

    invoke-direct {p6, p4, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;)V

    invoke-static {p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p5

    invoke-static {p5, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->communalBackground:Lkotlinx/coroutines/flow/Flow;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p5, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$workProfileUserInfoCallbackFlow$1;

    invoke-direct {p5, p0, p4}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$workProfileUserInfoCallbackFlow$1;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p5, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$4;

    invoke-direct {p5, p4, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;)V

    invoke-static {p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    const/4 p4, 0x3

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->allowedByDevicePolicyForWorkProfile:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
