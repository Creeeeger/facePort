.class final Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;->onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "subscriptionInfo",
        "Landroid/telephony/SubscriptionInfo;"
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
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;->access$getCoroutineScope$p(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController$onViewCreated$2$1$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
