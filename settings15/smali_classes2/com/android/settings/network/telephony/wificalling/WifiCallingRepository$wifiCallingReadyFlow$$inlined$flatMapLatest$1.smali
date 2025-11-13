.class public final Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;
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

.field final synthetic this$0:Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;-><init>(Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->label:I

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

    iget-object p1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/Unit;

    iget-object v1, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    iget v1, v1, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->subId:I

    invoke-static {v1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    const-string v4, "createForSubscriptionId(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v2, v3}, Lcom/android/settings/network/telephony/ims/ImsFeatureProvisionedFlowKt;->imsFeatureProvisionedFlow(IIILandroid/telephony/ims/ProvisioningManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;

    iget-object v4, v3, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;->imsMmTelRepository:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    invoke-virtual {v4}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->imsReadyFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$isWifiCallingSupportedFlow$$inlined$map$1;

    invoke-direct {v5, v4, v3}, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$isWifiCallingSupportedFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository;)V

    new-instance v3, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$1$1;

    const/4 v4, 0x3

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v1, v5, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    iput v2, p0, Lcom/android/settings/network/telephony/wificalling/WifiCallingRepository$wifiCallingReadyFlow$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
