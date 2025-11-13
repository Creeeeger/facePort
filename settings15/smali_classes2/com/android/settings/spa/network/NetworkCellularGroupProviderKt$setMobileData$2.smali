.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $enabled:Z

.field final synthetic $subId:I

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

.field label:I


# direct methods
.method public constructor <init>(IZLandroid/telephony/SubscriptionManager;Landroid/content/Context;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subId:I

    iput-boolean p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$enabled:Z

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;

    iget v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subId:I

    iget-boolean v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$enabled:Z

    iget-object v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;-><init>(IZLandroid/telephony/SubscriptionManager;Landroid/content/Context;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subId:I

    iget-boolean v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$enabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMobileData["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkCellularGroupProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subId:I

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    array-length v4, v1

    if-ne v4, v3, :cond_1

    const/4 p1, 0x0

    aget p1, v1, p1

    const-string v1, "There is only one sim in the device, correct dds as "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$enabled:Z

    if-eqz v1, :cond_2

    const-string v1, "setDefaultData: ["

    const-string v4, "]"

    invoke-static {p1, v1, v4, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$context:Landroid/content/Context;

    const/4 v1, 0x2

    and-int/2addr v1, v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    :cond_3
    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subscriptionsChangedFlow"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$enabled:Z

    iget-object p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "setMobileData: "

    const-string v4, "TelephonyRepository"

    invoke-static {v2, v4, v1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, v0, v1, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(ILandroid/content/Context;ZZ)V

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkProvisionEnabled(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->setCarrierNetworkEnabled(Z)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
