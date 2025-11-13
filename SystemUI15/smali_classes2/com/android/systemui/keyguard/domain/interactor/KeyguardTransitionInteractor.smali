.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final asleepKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentTransitionInfoInternal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final finishedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3;

.field public final fromAlternateBouncerTransitionInteractor:Ldagger/Lazy;

.field public final fromAodTransitionInteractor:Ldagger/Lazy;

.field public final fromDozingTransitionInteractor:Ldagger/Lazy;

.field public final fromLockscreenTransitionInteractor:Ldagger/Lazy;

.field public final fromPrimaryBouncerTransitionInteractor:Ldagger/Lazy;

.field public final isInTransitionToAnyState:Lkotlinx/coroutines/flow/Flow;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

.field public final sceneInteractor:Ldagger/Lazy;

.field public final startedKeyguardFromState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

.field public final startedStepWithPrecedingStep:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final transitionMap:Ljava/util/Map;

.field public final transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final transitionValueCache:Ljava/util/Map;

.field public final transitions:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromLockscreenTransitionInteractor:Ldagger/Lazy;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromPrimaryBouncerTransitionInteractor:Ldagger/Lazy;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromAodTransitionInteractor:Ldagger/Lazy;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromAlternateBouncerTransitionInteractor:Ldagger/Lazy;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromDozingTransitionInteractor:Ldagger/Lazy;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionMap:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValueCache:Ljava/util/Map;

    check-cast v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v3, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitions:Lkotlinx/coroutines/flow/Flow;

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance v13, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x1f

    const/4 v12, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/keyguard/shared/model/TransitionStep;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;FLcom/android/systemui/keyguard/shared/model/TransitionState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, p1, v4, v13}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$1;

    invoke-direct {v5, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v3, 0x0

    invoke-static {v5, p1, v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedStepWithPrecedingStep:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$1;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {p1, v5, v5, v3, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$2;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v5, v5, v3, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$3;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$3;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v5, v5, v3, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    iget-object v6, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v3, v6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    new-instance v6, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3;

    iget-object v7, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v6, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v6, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3;

    new-instance v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    invoke-direct {v7, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v8, 0x1

    invoke-static {v7, p1, v4, v8}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$2;

    invoke-direct {v7, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v7, p1, v4, v8}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardFromState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    new-instance v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$3;

    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isAodAvailable:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v7, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v7, p1, v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->asleepKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$4;

    invoke-direct {v3, v6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v3, p1, v4, v8}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$currentKeyguardState$1;

    invoke-direct {v3, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$currentKeyguardState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v5, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v5, v3}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v3, p1, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->currentTransitionInfoInternal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentTransitionInfoInternal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionToAnyState$1;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionToAnyState$1;

    sget-object v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionToAnyState$2;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionToAnyState$2;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransitionWhere(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransitionToAnyState:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getCurrentState()Lcom/android/systemui/keyguard/shared/model/KeyguardState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/SharedFlow;->getReplayCache()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    return-object p0
.end method

.method public final getTransitionValueFlow(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionValueCache:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v0, Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public final isFinishedInState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isFinishedInState$$inlined$map$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isFinishedInState$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final isInTransition(Lcom/android/systemui/keyguard/shared/model/Edge;Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransition$3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransition$3;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransition$4;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransition$4;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p2, p1, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final isInTransitionToStateWhere(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionToStateWhere$1;->INSTANCE:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionToStateWhere$1;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->isInTransitionWhere(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final isInTransitionWhere(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionWhere$1;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionWhere$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionWhere$$inlined$filter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionWhere$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionWhere$3;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$isInTransitionWhere$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    iget-object v1, v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/shared/model/Edge;->verifyValidKeyguardStates(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;

    iget-object v0, v0, Lcom/android/systemui/keyguard/shared/model/Edge$SceneToState;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/shared/model/Edge;->verifyValidKeyguardStates(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    iget-object v0, v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/shared/model/Edge;->verifyValidKeyguardStates(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transitionMap:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-object v0
.end method

.method public final transitionValue(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->getTransitionValueFlow(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p0

    return-object p0
.end method
