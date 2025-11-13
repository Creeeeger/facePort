.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
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
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $actionSetCalls:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $actionSetMobileData:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $actionSetTexts:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $callsSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $primarySimInfo:Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;

.field final synthetic $textsSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroid/telephony/SubscriptionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$primarySimInfo:Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$textsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iput-object p6, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p7, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$context:Landroid/content/Context;

    iput-object p9, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$actionSetCalls:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$actionSetTexts:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$actionSetMobileData:Lkotlin/jvm/functions/Function1;

    iput p12, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$$changed:I

    iput p13, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$$changed1:I

    iput p14, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$primarySimInfo:Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    iget-object v2, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v3, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$textsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v4, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v5, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object v6, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v7, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$context:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$actionSetCalls:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$actionSetTexts:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$actionSetMobileData:Lkotlin/jvm/functions/Function1;

    iget v13, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$$changed:I

    or-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    iget v14, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$$changed1:I

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;->$$default:I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move v12, v13

    move v13, v14

    move v14, v15

    invoke-static/range {v0 .. v14}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->PrimarySimImpl(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroid/telephony/SubscriptionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
