.class public final Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final configurationValues:Lkotlinx/coroutines/flow/Flow;

.field public final layoutDirection:Lkotlinx/coroutines/flow/Flow;

.field public final onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final repository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;

.field public final scaleForResolution:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->repository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;

    check-cast p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    new-instance v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$special$$inlined$map$1;

    iget-object v1, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$special$$inlined$map$2;

    iget-object v1, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$special$$inlined$map$3;

    iget-object v1, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->layoutDirection:Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$onAnyConfigurationChange$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$onAnyConfigurationChange$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    iget-object v2, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    iget-object v0, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    iput-object v0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->scaleForResolution:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final dimensionPixelSize(I)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;
    .locals 2

    new-instance v0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor$dimensionPixelSize$1;-><init>(Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    return-object p0
.end method
