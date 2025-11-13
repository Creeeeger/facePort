.class public final Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final bgHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public isActive:Z

.field public final logger:Lcom/android/systemui/common/data/repository/PackageUpdateLogger;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/common/data/repository/PackageUpdateLogger;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->logger:Lcom/android/systemui/common/data/repository/PackageUpdateLogger;

    iput-object p7, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    const/4 p1, 0x0

    const/16 p3, 0x64

    const/4 p4, 0x0

    const/4 p6, 0x4

    invoke-static {p1, p3, p4, p6}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSubscriptionCount()Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    move-result-object p3

    new-instance p6, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$_packageChanged$lambda$1$$inlined$map$1;

    invoke-direct {p6, p3}, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$_packageChanged$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p6, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$_packageChanged$1$2;

    invoke-direct {p6, p0, p4}, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$_packageChanged$1$2;-><init>(Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p4, p3, p6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2, p5}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    iget-object p3, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Changed;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/systemui/common/shared/model/PackageChangeModel$Changed;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p3, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Uninstalled;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/systemui/common/shared/model/PackageChangeModel$Uninstalled;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateFinished;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateFinished;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->_packageChanged:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateStarted;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/systemui/common/shared/model/PackageChangeModel$UpdateStarted;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method
