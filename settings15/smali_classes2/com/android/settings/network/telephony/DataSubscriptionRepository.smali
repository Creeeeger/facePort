.class public final Lcom/android/settings/network/telephony/DataSubscriptionRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final getDisplayName:Lkotlin/jvm/functions/Function1;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$1;

    invoke-direct {v0, p1}, Lcom/android/settings/network/telephony/DataSubscriptionRepository$1;-><init>(Landroid/content/Context;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->getDisplayName:Lkotlin/jvm/functions/Function1;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->requireSubscriptionManager(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final dataSummaryFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->defaultDataSubscriptionIdFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/android/settings/network/telephony/DataSubscriptionRepository$activeDataSubscriptionIdFlow$1;->INSTANCE:Lcom/android/settings/network/telephony/DataSubscriptionRepository$activeDataSubscriptionIdFlow$1;

    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "block"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/network/telephony/TelephonyRepositoryKt$telephonyCallbackFlow$1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt$telephonyCallbackFlow$1;-><init>(Lkotlin/jvm/functions/Function1;Landroid/telephony/TelephonyManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v5, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$1;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v5}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/network/telephony/DataSubscriptionRepository;)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final defaultDataSubscriptionIdFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settingslib/spaprivileged/framework/common/BroadcastReceiverFlowKt;->broadcastReceiverFlow(Landroid/content/Context;Landroid/content/IntentFilter;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$defaultDataSubscriptionIdFlow$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/DataSubscriptionRepository$defaultDataSubscriptionIdFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$defaultDataSubscriptionIdFlow$2;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/android/settings/network/telephony/DataSubscriptionRepository$defaultDataSubscriptionIdFlow$$inlined$map$1;)V

    const/4 p0, -0x1

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
