.class public final Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/display/data/repository/DisplayRepository;


# static fields
.field public static final Companion:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

.field public static final DEBUG:Z


# instance fields
.field public final _ignoredDisplayIds:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final connectedDisplayIds:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultDisplayOff:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;

.field public final displayAdditionEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$2;

.field public final displayChangeEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final displays:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final enabledDisplays:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final oldEnabledDisplays:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final pendingDisplay:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->Companion:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

    const-string v0, "DisplayRepository"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$1;-><init>(Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Landroid/os/Handler;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$allDisplayEvents$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v0, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    const-string p1, "allDisplayEvents"

    invoke-static {v2, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$filterIsInstance$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$filterIsInstance$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayChangeEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$filterIsInstance$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$filterIsInstance$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;)V

    iput-object v2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayAdditionEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$2;

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$3;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, p3, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$4;

    invoke-direct {v3, v0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v4, "enabledDisplayIds"

    invoke-static {v3, v4}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displays:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    sget-object v4, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->_ignoredDisplayIds:Lkotlinx/coroutines/flow/StateFlowImpl;

    const-string v6, "ignoredDisplayIds"

    invoke-static {v5, v6}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;

    invoke-direct {v6, p0, p2, v1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;-><init>(Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Landroid/os/Handler;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    const-string v6, "connectedDisplayIds"

    invoke-static {p2, v6}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {p2, p3, p1, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$5;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;)V

    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const-string p2, "connectedExternalDisplayIds"

    invoke-static {p1, p2}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$pendingDisplayIds$1;

    invoke-direct {p2, v1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$pendingDisplayIds$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p1, v5, p2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    const-string p2, "allPendingDisplayIds"

    invoke-static {p1, p2}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$6;

    invoke-direct {p2, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const-string p2, "pendingDisplayId"

    invoke-static {p1, p2}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$7;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;)V

    const-string p1, "pendingDisplay"

    invoke-static {p2, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->pendingDisplay:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$8;

    invoke-direct {p1, v0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;

    invoke-direct {p2, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->defaultDisplayOff:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$9;

    return-void
.end method

.method public static final access$getDisplay(ILcom/android/systemui/display/data/repository/DisplayRepositoryImpl;)Landroid/view/Display;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "DisplayRepository#getDisplay"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public static debugLog(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 9

    sget-boolean v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/app/tracing/FlowTracing;->INSTANCE:Lcom/android/app/tracing/FlowTracing;

    new-instance v8, Lcom/android/app/tracing/TraceStateLogger;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/app/tracing/TraceStateLogger;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/app/tracing/FlowTracing;->traceEmissionCount(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$debugLog$$inlined$traceEach$default$1;

    const/4 v0, 0x0

    invoke-direct {p1, v8, v0}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$debugLog$$inlined$traceEach$default$1;-><init>(Lcom/android/app/tracing/TraceStateLogger;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
