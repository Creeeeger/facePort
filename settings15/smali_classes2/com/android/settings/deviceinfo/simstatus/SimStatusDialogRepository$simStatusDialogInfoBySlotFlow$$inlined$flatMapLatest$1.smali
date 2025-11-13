.class public final Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"
    }
    d2 = {
        "T",
        "R",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;

    invoke-direct {v0, p3, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;)V

    iput-object p1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$showUpFlow$1;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$showUpFlow$1;-><init>(ILcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v6, v5}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoFlow$$inlined$flatMapLatest$1;

    invoke-direct {v5, v1, v3, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoFlow$$inlined$flatMapLatest$1;-><init>(ILcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$SimStatusDialogInfo;

    invoke-direct {v1, v4, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$SimStatusDialogInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    :goto_0
    iput v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogRepository$simStatusDialogInfoBySlotFlow$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
