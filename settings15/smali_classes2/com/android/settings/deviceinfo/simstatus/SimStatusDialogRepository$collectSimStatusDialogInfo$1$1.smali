.class final Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $simSlotIndex:I

.field label:I

.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;

    iput p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->$simSlotIndex:I

    iput-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->$action:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->$simSlotIndex:I

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->$action:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->label:I

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

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->$simSlotIndex:I

    iget-object v3, p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;->simSlotRepository:Lcom/android/settings/network/telephony/SimSlotRepository;

    invoke-virtual {v3, v1}, Lcom/android/settings/network/telephony/SimSlotRepository;->subIdInSimSlotFlow(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;)V

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->$action:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1$1;

    invoke-direct {v3, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$collectSimStatusDialogInfo$1$1;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
