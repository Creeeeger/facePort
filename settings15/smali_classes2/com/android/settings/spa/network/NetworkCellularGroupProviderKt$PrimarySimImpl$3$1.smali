.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;
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
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $it:I

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iput p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$it:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget v4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$it:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v8, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget v4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->$it:I

    iput v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;->label:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;-><init>(IZLandroid/telephony/SubscriptionManager;Landroid/content/Context;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v2
.end method
