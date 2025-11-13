.class final Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "subscriptionInfoList",
        "",
        "Landroid/telephony/SubscriptionInfo;",
        "kotlin.jvm.PlatformType"
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
.field final synthetic $coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Landroidx/lifecycle/LifecycleCoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->$coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->$coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Landroidx/lifecycle/LifecycleCoroutineScope;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget v4, v0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->$coroutineScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1$2$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$onViewCreated$1$2$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
