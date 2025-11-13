.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;
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
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "newEnabled",
        "",
        "invoke"
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

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/ContextScope;Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2$1;

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object v4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2$1;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroidx/compose/runtime/MutableIntState;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v7, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
