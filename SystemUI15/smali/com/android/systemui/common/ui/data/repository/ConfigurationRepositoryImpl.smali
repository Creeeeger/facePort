.class public final Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationValues:Lkotlinx/coroutines/flow/Flow;

.field public final context:Landroid/content/Context;

.field public final displayInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final displayUtils:Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;

.field public final onAnyConfigurationChange:Lkotlinx/coroutines/flow/Flow;

.field public final onConfigurationChange:Lkotlinx/coroutines/flow/Flow;

.field public final scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p2, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayUtils:Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;

    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p2, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onConfigurationChange$1;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onConfigurationChange$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$configurationValues$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$configurationValues$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    new-instance p2, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$scaleForResolution$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$scaleForResolution$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->getResolutionScale()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getResolutionScale()F
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayUtils:Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    invoke-virtual {p0, v3, v0, v4, v1}, Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result p0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :cond_2
    :goto_0
    return v2
.end method
