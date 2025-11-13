.class public final Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;
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

.field final synthetic this$0:Lcom/android/settings/network/InternetPreferenceRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/InternetPreferenceRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/InternetPreferenceRepository;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/InternetPreferenceRepository;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;-><init>(Lcom/android/settings/network/InternetPreferenceRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->this$0:Lcom/android/settings/network/InternetPreferenceRepository;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v4

    instance-of v5, v4, Landroid/net/wifi/WifiInfo;

    iget-object v6, v3, Lcom/android/settings/network/InternetPreferenceRepository;->dataSubscriptionRepository:Lcom/android/settings/network/telephony/DataSubscriptionRepository;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "InternetPreferenceRepo"

    const-string v3, "Detect a merged carrier Wi-Fi connected."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->dataSummaryFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/settings/network/InternetPreferenceRepository$wifiDisplayInfoFlow$$inlined$map$1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/settings/network/InternetPreferenceRepository$wifiDisplayInfoFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    const-string v4, "getTransportTypes(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget v7, v1, v5

    if-eqz v7, :cond_5

    if-eq v7, v2, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/settings/network/InternetPreferenceRepository$DisplayInfo;

    iget-object v3, v3, Lcom/android/settings/network/InternetPreferenceRepository;->context:Landroid/content/Context;

    const v4, 0x7f142f38

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0805e9

    invoke-direct {v1, v3, v4}, Lcom/android/settings/network/InternetPreferenceRepository$DisplayInfo;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, v3, Lcom/android/settings/network/InternetPreferenceRepository;->wifiSummaryRepository:Lcom/android/settings/wifi/WifiSummaryRepository;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSummaryRepository;->summaryFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/settings/network/InternetPreferenceRepository$wifiDisplayInfoFlow$$inlined$map$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/settings/network/InternetPreferenceRepository$wifiDisplayInfoFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->dataSummaryFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v3, Lcom/android/settings/network/InternetPreferenceRepository$wifiDisplayInfoFlow$$inlined$map$1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/settings/network/InternetPreferenceRepository$wifiDisplayInfoFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    goto :goto_1

    :cond_6
    iget-object v1, v3, Lcom/android/settings/network/InternetPreferenceRepository;->wifiRepository:Lcom/android/settings/wifi/repository/WifiRepository;

    invoke-virtual {v1}, Lcom/android/settings/wifi/repository/WifiRepository;->wifiStateFlow()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v1

    new-instance v4, Lcom/android/settings/network/InternetPreferenceRepository$defaultDisplayInfoFlow$1;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/settings/network/InternetPreferenceRepository$defaultDisplayInfoFlow$1;-><init>(Lcom/android/settings/network/InternetPreferenceRepository;Lkotlin/coroutines/Continuation;)V

    iget-object v3, v3, Lcom/android/settings/network/InternetPreferenceRepository;->airplaneModeOnFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3, v1, v4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v3

    :goto_1
    iput v2, p0, Lcom/android/settings/network/InternetPreferenceRepository$displayInfoFlow$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
