.class public final Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $combinedLoggingInfo$inlined:Ljava/lang/String;

.field public final synthetic $flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

.field public final synthetic $this_andAllFlows$inlined:Ljava/util/List;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$combinedLoggingInfo$inlined:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$this_andAllFlows$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$2;

    iget-object v1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$flowArray$inlined:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;

    iget-object v3, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$combinedLoggingInfo$inlined:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$this_andAllFlows$inlined:Ljava/util/List;

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1;->$tableLogBuffer$inlined:Lcom/android/systemui/log/table/TableLogBuffer;

    invoke-direct {v2, v5, p0, v3, v4}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryKt$andAllFlows$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1, v0, v2, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
