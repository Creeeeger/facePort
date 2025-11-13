.class public final Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final MAX_UPDATE_CORRELATION_DELAY:J


# instance fields
.field public final allAuthorizedPanels:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final allAvailableAndAuthorizedPanels:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final dreamManager:Landroid/app/DreamManager;

.field public final packageChangeInteractor:Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;

.field public final panelComponent:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final powerManager:Landroid/os/PowerManager;

.field public final secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

.field public final selectedPanel:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$map$1;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final taskFragmentFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1f4

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->MAX_UPDATE_CORRELATION_DELAY:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/panels/SelectedComponentRepository;Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;Lcom/android/systemui/util/time/SystemClock;Landroid/os/PowerManager;Landroid/app/DreamManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->secSelectedComponentRepository:Lcom/android/systemui/controls/panels/SecSelectedComponentRepository;

    iput-object p6, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->packageChangeInteractor:Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;

    iput-object p7, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p8, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->powerManager:Landroid/os/PowerManager;

    iput-object p9, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->dreamManager:Landroid/app/DreamManager;

    iget-object p1, p3, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->controlsListingController:Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast p5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p3, p5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    new-instance p5, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$flatMapLatest$1;

    invoke-direct {p5, p2, p0}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p5

    new-instance p6, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$map$1;

    invoke-direct {p6, p5}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p5, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {p5, p2, p4}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;)V

    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p3

    if-nez p1, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$allAvailableServices$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$allAvailableServices$1;-><init>(Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p4, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$allAvailableServices$2;

    invoke-direct {p4, p0, p2}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$allAvailableServices$2;-><init>(Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p5, p4, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    move-object p1, p5

    :goto_0
    new-instance p4, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$allAvailableAndAuthorizedPanels$1;

    invoke-direct {p4, p2}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$allAvailableAndAuthorizedPanels$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p5, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance p1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$panelComponent$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$panelComponent$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p3, p5, p6, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p3, p10, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->panelComponent:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-static {p2, p3, p1, p4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->taskFragmentFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public final monitorUpdatesAndRestart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->taskFragmentFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->resetReplayCache()V

    new-instance v1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$flatMapLatest$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;)V

    iget-object v2, p0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->panelComponent:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$filter$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;->INSTANCE:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$4;

    invoke-static {v2, v1}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$6;->INSTANCE:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$6;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$filter$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$8;-><init>(Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;)V

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor$monitorUpdatesAndRestart$$inlined$filter$2;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
