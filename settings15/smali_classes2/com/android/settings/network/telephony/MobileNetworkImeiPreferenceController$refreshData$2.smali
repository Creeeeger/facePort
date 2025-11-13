.class final Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->refreshData(Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.field final synthetic $subscription:Landroid/telephony/SubscriptionInfo;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->$subscription:Landroid/telephony/SubscriptionInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->$subscription:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->access$getTitle(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->access$setTitle$p(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->access$getImei(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->access$setImei$p(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController$refreshData$2;->$subscription:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->access$setSimSlot$p(Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
