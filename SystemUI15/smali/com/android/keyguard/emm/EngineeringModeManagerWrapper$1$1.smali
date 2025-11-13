.class public final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    instance-of p1, p2, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;

    iget v0, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iput-object p0, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$1$1$emit$1;->label:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$getEmmStatus$2;-><init>(Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
