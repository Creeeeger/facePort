.class public final Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor;


# instance fields
.field public final concurrentDisplaysInProgress:Lkotlinx/coroutines/flow/Flow;

.field public final connectedDisplayAddition:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$2;

.field public final connectedDisplayState:Lkotlinx/coroutines/flow/Flow;

.field public final pendingDisplay:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$3;

.field public final virtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;


# direct methods
.method public constructor <init>(Landroid/companion/virtual/VirtualDeviceManager;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/display/data/repository/DisplayRepository;Lcom/android/systemui/display/data/repository/DeviceStateRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->virtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    check-cast p3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    new-instance p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1;

    iget-object p2, p3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displays:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;)V

    invoke-static {p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->connectedDisplayState:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$filter$1;

    iget-object p2, p3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayAdditionEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;)V

    invoke-static {p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->pendingDisplay:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$3;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;)V

    iput-object p2, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->pendingDisplay:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$3;

    check-cast p4, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;

    new-instance p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$4;

    iget-object p2, p4, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, p2}, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->concurrentDisplaysInProgress:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
