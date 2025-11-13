.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
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

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3$1;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v6, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
