.class public final Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _editModeState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

.field public final currentScene:Lkotlinx/coroutines/flow/StateFlow;

.field public final editModeState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

.field public final isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final transitionState:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast p2, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    iget-object v0, p2, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->currentScene:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->_editModeState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->editModeState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->transitionState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    return-void
.end method
