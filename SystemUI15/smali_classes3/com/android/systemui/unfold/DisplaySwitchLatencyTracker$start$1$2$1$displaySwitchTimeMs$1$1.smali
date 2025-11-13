.class final Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;
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
.field final synthetic $toFoldableDeviceState:I

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iput p2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->$toFoldableDeviceState:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;

    iget-object v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->$toFoldableDeviceState:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;-><init>(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->I$0:I

    iget-object v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->this$0:Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;

    iget v1, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->$toFoldableDeviceState:I

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v3

    const-string v4, "DisplaySwitchLatency"

    const-string v5, "displaySwitch"

    invoke-static {v3, v4, v5}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iput-object v4, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->I$0:I

    iput v2, p0, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker$start$1$2$1$displaySwitchTimeMs$1$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;->access$waitForDisplaySwitch(Lcom/android/systemui/unfold/DisplaySwitchLatencyTracker;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move v0, v3

    move-object p0, v4

    :goto_0
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, p0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p1

    move v0, v3

    move-object p0, v4

    :goto_1
    invoke-static {v0, p0}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    throw p1
.end method
