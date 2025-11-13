.class public final Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow;"
    }
.end annotation


# instance fields
.field final synthetic $flows$inlined:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $transform$inlined$1:Lkotlin/jvm/functions/Function9;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;->$transform$inlined$1:Lkotlin/jvm/functions/Function9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$3;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;->$transform$inlined$1:Lkotlin/jvm/functions/Function9;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function9;)V

    invoke-static {v0, v1, v2, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public collect$$forInline(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$1;-><init>(Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;Lkotlin/coroutines/Continuation;)V

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;->$flows$inlined:[Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$3;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3;->$transform$inlined$1:Lkotlin/jvm/functions/Function9;

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/util/kotlin/FlowKt$combine$$inlined$combine$3$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function9;)V

    invoke-static {v0, v1, v2, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal([Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
