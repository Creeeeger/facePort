.class public final Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/DataSubscriptionRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/network/telephony/DataSubscriptionRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2;->this$0:Lcom/android/settings/network/telephony/DataSubscriptionRepository;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;-><init>(Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/settings/network/telephony/DataSubscriptionRepository$DataSubscriptionIds;

    iget-object p2, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2;->this$0:Lcom/android/settings/network/telephony/DataSubscriptionRepository;

    iget-object v2, p2, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v4, p1, Lcom/android/settings/network/telephony/DataSubscriptionRepository$DataSubscriptionIds;->activeSubId:I

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, ""

    goto :goto_1

    :cond_3
    iget-object v4, p2, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v5, p2, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->context:Landroid/content/Context;

    invoke-static {v4, v5, v2}, Lcom/android/settings/network/SubscriptionUtil;->isSubscriptionVisible(Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    iget-object v4, p2, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->getDisplayName:Lkotlin/jvm/functions/Function1;

    iget v5, p1, Lcom/android/settings/network/telephony/DataSubscriptionRepository$DataSubscriptionIds;->defaultSubId:I

    if-nez v2, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget p1, p1, Lcom/android/settings/network/telephony/DataSubscriptionRepository$DataSubscriptionIds;->activeSubId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-ne p1, v5, :cond_5

    move-object p1, v2

    goto :goto_1

    :cond_5
    iget-object p1, p2, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->context:Landroid/content/Context;

    const p2, 0x7f141805

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    iput v3, v0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataSubscriptionRepository$dataSummaryFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
