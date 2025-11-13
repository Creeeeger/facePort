.class final Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/flags/ConditionalRestarter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/ConditionalRestarter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/ConditionalRestarter;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->this$0:Lcom/android/systemui/flags/ConditionalRestarter;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;

    iget-object p0, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->this$0:Lcom/android/systemui/flags/ConditionalRestarter;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;-><init>(Lcom/android/systemui/flags/ConditionalRestarter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-boolean p1, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->Z$0:Z

    if-eqz p1, :cond_4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->this$0:Lcom/android/systemui/flags/ConditionalRestarter;

    iget-wide v4, v4, Lcom/android/systemui/flags/ConditionalRestarter;->restartDelaySec:J

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iput-object v1, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/flags/ConditionalRestarter$scheduleRestart$1$3;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
