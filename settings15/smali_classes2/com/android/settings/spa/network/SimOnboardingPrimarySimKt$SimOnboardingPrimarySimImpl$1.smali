.class final Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;
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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v7

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v8, 0x0

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$callsSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$callsSelectedId$1;

    const/16 v5, 0xc08

    const/4 v6, 0x6

    const/4 v2, 0x0

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/compose/runtime/MutableIntState;

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$textsSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$textsSelectedId$1;

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/compose/runtime/MutableIntState;

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$mobileDataSelectedId$1;

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableIntState;

    const v2, 0x7f142c3f

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7, v8}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt;->SimOnboardingMessage(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, -0x61d39e78

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v3, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    new-instance v4, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;

    invoke-direct {v4, v2, v3, v6}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$primarySimInfo$1$1;-><init>(Landroid/content/Context;Lcom/android/settings/network/SimOnboardingService;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v2, v4}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v2, 0x38

    invoke-static {v4, v6, v7, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    if-nez v11, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget v3, v3, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimCalls:I

    move-object v12, v9

    check-cast v12, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v3, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget v3, v3, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimTexts:I

    move-object v13, v10

    check-cast v13, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v3, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget v3, v3, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimMobileData:I

    move-object v14, v1

    check-cast v14, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v1, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, v1, Lcom/android/settings/network/SimOnboardingService;->targetPrimarySimAutoDataSwitch:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1, v6, v7, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    new-instance v2, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$1;

    iget-object v3, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-direct {v2, v12, v3}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$1;-><init>(Landroidx/compose/runtime/SnapshotMutableIntStateImpl;Lcom/android/settings/network/SimOnboardingService;)V

    new-instance v4, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$2;

    invoke-direct {v4, v13, v3}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$2;-><init>(Landroidx/compose/runtime/SnapshotMutableIntStateImpl;Lcom/android/settings/network/SimOnboardingService;)V

    new-instance v6, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;

    invoke-direct {v6, v14, v3}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$3;-><init>(Landroidx/compose/runtime/SnapshotMutableIntStateImpl;Lcom/android/settings/network/SimOnboardingService;)V

    const/16 v24, 0x0

    const/16 v25, 0xf0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x8

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-static/range {v11 .. v25}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->PrimarySimImpl(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroid/telephony/SubscriptionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    const v2, -0x61d39875

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_4

    if-ne v3, v5, :cond_5

    :cond_4
    new-instance v3, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$4$1;

    invoke-direct {v3, v1}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$5;

    iget-object v0, v0, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    invoke-direct {v1, v0}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt$SimOnboardingPrimarySimImpl$1$5;-><init>(Lcom/android/settings/network/SimOnboardingService;)V

    invoke-static {v3, v1, v7, v8}, Lcom/android/settings/spa/network/AutomaticDataSwitchingPreferenceKt;->AutomaticDataSwitchingPreference(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
