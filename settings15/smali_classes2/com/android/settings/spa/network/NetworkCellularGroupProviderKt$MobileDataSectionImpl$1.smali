.class final Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $nonDds:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $subscriptionManager:Landroid/telephony/SubscriptionManager;

.field final synthetic $wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$nonDds:Landroidx/compose/runtime/MutableIntState;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$Category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$nonDds:Landroidx/compose/runtime/MutableIntState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p3, -0x7acf195b

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p1

    iget-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$nonDds:Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v3, -0x1

    if-nez p1, :cond_2

    if-ne v1, v2, :cond_4

    :cond_2
    invoke-static {p3}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const-string v1, "subscriptionsChangedFlow"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p3, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    move-object v1, p3

    goto :goto_1

    :cond_3
    invoke-static {p3, v0}, Lcom/android/settings/network/telephony/TelephonyRepositoryKt;->telephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    new-instance v1, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1;

    invoke-direct {v1, p1, p3, v0}, Lcom/android/settings/network/telephony/TelephonyRepository$isMobileDataPolicyEnabledFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/telephony/TelephonyManager;I)V

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p1

    :goto_1
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p3, 0x0

    const/16 v0, 0x38

    invoke-static {v1, p3, p2, v0}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v1

    const v4, -0x7acf1810

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_5

    if-ne v6, v2, :cond_6

    :cond_5
    new-instance v1, Lcom/android/settings/network/telephony/TelephonyRepository;

    invoke-direct {v1, v4}, Lcom/android/settings/network/telephony/TelephonyRepository;-><init>(Landroid/content/Context;)V

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/network/telephony/TelephonyRepository;->isDataEnabledFlow(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v1, p2, v0}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_7

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v1

    :cond_7
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v1, v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v4, -0x7acf16d0    # -8.31831E-36f

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_8

    if-ne v5, v2, :cond_9

    :cond_8
    new-instance v5, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$1$1;

    invoke-direct {v5, v0}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;

    iget-object v8, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v10, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$wifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object v11, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$mobileDataSelectedId:Landroidx/compose/runtime/MutableIntState;

    move-object v7, v1

    check-cast v7, Lkotlinx/coroutines/internal/ContextScope;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$2;-><init>(Lkotlinx/coroutines/internal/ContextScope;Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroidx/compose/runtime/MutableIntState;)V

    invoke-static {v5, v0, p2, p1}, Lcom/android/settings/spa/network/MobileDataSwitchingPreferenceKt;->MobileDataSwitchingPreference(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$nonDds:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    if-eq v0, v3, :cond_c

    const v0, -0x7acf147d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    if-ne v1, v2, :cond_b

    :cond_a
    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$3$1;

    invoke-direct {v1, p3}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance p3, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$4;

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;->$nonDds:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p3, v0, p0}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1$4;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V

    invoke-static {v1, p3, p2, p1}, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt;->AutomaticDataSwitchingPreference(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :cond_c
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
