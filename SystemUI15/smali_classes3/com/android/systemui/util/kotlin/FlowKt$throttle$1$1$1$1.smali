.class final Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;
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
.field final synthetic $$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope;"
        }
    .end annotation
.end field

.field final synthetic $clock:Lcom/android/systemui/util/time/SystemClock;

.field final synthetic $it:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $outerScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $previousEmitTimeMs:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $sendJob:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timeUntilNextEmit:J

.field label:I


# direct methods
.method public constructor <init>(JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$LongRef;Lcom/android/systemui/util/time/SystemClock;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$timeUntilNextEmit:J

    iput-object p3, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$sendJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$outerScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p6, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$it:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$previousEmitTimeMs:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p8, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$clock:Lcom/android/systemui/util/time/SystemClock;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    new-instance p1, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;

    iget-wide v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$timeUntilNextEmit:J

    iget-object v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$sendJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$outerScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v6, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$it:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$previousEmitTimeMs:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$clock:Lcom/android/systemui/util/time/SystemClock;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;-><init>(JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$LongRef;Lcom/android/systemui/util/time/SystemClock;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->label:I

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

    iget-wide v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$timeUntilNextEmit:J

    iput v2, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$sendJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$outerScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v9, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1$1;

    iget-object v4, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$$this$channelFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v5, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$it:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$previousEmitTimeMs:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, p0, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1;->$clock:Lcom/android/systemui/util/time/SystemClock;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/util/kotlin/FlowKt$throttle$1$1$1$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$LongRef;Lcom/android/systemui/util/time/SystemClock;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, v9, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
