.class public final Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field public final subId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/telephony/ims/ImsManager;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    const-string v1, "getImsMmTelManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    iput-object v0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-void
.end method


# virtual methods
.method public final imsReadyFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsReadyFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsReadyFlow$1;-><init>(Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsReadyFlow$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsReadyFlow$2;-><init>(Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final imsRegisteredFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$1;-><init>(Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$imsRegisteredFlow$2;-><init>(Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final isSupported(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;

    iget v1, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;-><init>(Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p2, p0, v4}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;-><init>(IILcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$1;->label:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "withContext(...)"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method
