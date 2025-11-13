.class public final Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/brightness/data/repository/ScreenBrightnessRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final apiQueue:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final backgroundContext:Lkotlin/coroutines/CoroutineContext;

.field public final brightnessInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final displayId:I

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final linearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final maxLinearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final minLinearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManager;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/table/TableLogBuffer;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayId:I

    iput-object p2, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p3, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p6, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    const p1, 0x7fffffff

    const/4 p2, 0x0

    const/4 p3, 0x6

    invoke-static {p1, p2, p2, p3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->apiQueue:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$1;-><init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x2

    invoke-static {p5, p6, p2, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p3, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1;-><init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$2;

    invoke-direct {p3, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p3, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$1;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;)V

    invoke-static {p1, p6}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p6, 0x1

    invoke-static {p3, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p6

    invoke-static {p1, p5, p6, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->brightnessInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p6, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$2;

    invoke-direct {p6, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string p2, "min"

    invoke-static {p6, p4, p2}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt;->logDiffForTable-CVGC-8U(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    const/4 p6, 0x3

    invoke-static {p3, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->box-impl(F)Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    move-result-object v2

    invoke-static {p2, p5, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->minLinearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$3;

    invoke-direct {v0, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string p2, "max"

    invoke-static {v0, p4, p2}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt;->logDiffForTable-CVGC-8U(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p3, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->box-impl(F)Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    move-result-object v2

    invoke-static {p2, p5, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->maxLinearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$4;

    invoke-direct {p1, p2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string p2, "brightness"

    invoke-static {p1, p4, p2}, Lcom/android/systemui/brightness/shared/model/LinearBrightnessKt;->logDiffForTable-CVGC-8U(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p3, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {v1}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->box-impl(F)Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    move-result-object p3

    invoke-static {p1, p5, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->linearBrightness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getMinMaxLinearBrightness(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;

    iget v1, v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;-><init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->brightnessInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/BrightnessInfo;

    if-nez p1, :cond_4

    iput v3, v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$getMinMaxLinearBrightness$1;->label:I

    new-instance p1, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfoValue$2;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfoValue$2;-><init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Landroid/hardware/display/BrightnessInfo;

    :cond_4
    if-eqz p1, :cond_5

    iget p0, p1, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    if-eqz p1, :cond_6

    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    goto :goto_3

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_3
    invoke-static {p0}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->box-impl(F)Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/brightness/shared/model/LinearBrightness;->box-impl(F)Lcom/android/systemui/brightness/shared/model/LinearBrightness;

    move-result-object p1

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
