.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $callsSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $primarySimInfo:Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

.field final synthetic $textsSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$primarySimInfo:Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$textsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "$this$Category"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x51

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    move-object v1, v13

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$primarySimInfo:Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    iget-object v3, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$callsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v4, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$textsSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v5, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iget-object v6, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 v12, 0x0

    const v14, 0x8008

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7e0

    invoke-static/range {v2 .. v16}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->PrimarySimImpl(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroid/telephony/SubscriptionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
