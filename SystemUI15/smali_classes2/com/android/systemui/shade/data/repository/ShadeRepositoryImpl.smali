.class public final Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/data/repository/ShadeRepository;


# instance fields
.field public final _currentFling:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyExpandImmediate:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyIsClosing:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyIsQsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyQsFullscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyQsTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyShadeExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _legacyShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _lockscreenShadeExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _qsExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shadeMode:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _udfpsTransitionToFullShadeProgress:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final currentFling:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyIsClosing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyLockscreenShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final legacyQsFullscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyQsTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final legacyShadeTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final lockscreenShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final udfpsTransitionToFullShadeProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_qsExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->qsExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_lockscreenShadeExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->lockscreenShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_udfpsTransitionToFullShadeProgress:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_currentFling:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->currentFling:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyShadeExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyLockscreenShadeTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyQsTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyQsTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyIsQsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyExpandImmediate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyQsFullscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyQsFullscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/systemui/Flags;->dualShade()V

    sget-object v1, Lcom/android/systemui/shade/shared/model/ShadeMode$Single;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Single;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_shadeMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->shadeMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyIsClosing:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsClosing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
