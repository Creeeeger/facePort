.class public final Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _shadeOrQsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _state:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _statusBarState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _visibility:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final shadeOrQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final visibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_shadeOrQsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->shadeOrQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_statusBarState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->_visibility:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/data/repository/SecNotificationShadeWindowStateRepository;->visibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
