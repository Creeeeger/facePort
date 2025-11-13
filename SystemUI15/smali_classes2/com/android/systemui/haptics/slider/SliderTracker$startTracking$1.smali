.class final Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/haptics/slider/SliderTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/haptics/slider/SliderTracker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/haptics/slider/SliderTracker;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->this$0:Lcom/android/systemui/haptics/slider/SliderTracker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->this$0:Lcom/android/systemui/haptics/slider/SliderTracker;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;-><init>(Lcom/android/systemui/haptics/slider/SliderTracker;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->this$0:Lcom/android/systemui/haptics/slider/SliderTracker;

    iget-object p1, p1, Lcom/android/systemui/haptics/slider/SliderTracker;->eventProducer:Lcom/android/systemui/haptics/slider/SliderEventProducer;

    check-cast p1, Lcom/android/systemui/haptics/slider/SliderStateProducer;

    iget-object p1, p1, Lcom/android/systemui/haptics/slider/SliderStateProducer;->_currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1$1;

    iget-object v3, p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->this$0:Lcom/android/systemui/haptics/slider/SliderTracker;

    invoke-direct {v1, v3}, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1$1;-><init>(Lcom/android/systemui/haptics/slider/SliderTracker;)V

    iput v2, p0, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;->label:I

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
