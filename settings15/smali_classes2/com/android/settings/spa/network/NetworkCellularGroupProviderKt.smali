.class public abstract Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final CollectAirplaneModeAndFinishIfOn(Landroidx/compose/runtime/Composer;I)V
    .locals 5

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x20cbc81e

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalChangeFlowKt;->settingsGlobalChangeFlow(Landroid/content/Context;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt$settingsGlobalBooleanFlow$$inlined$map$1;

    invoke-direct {v3, v2, v1}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt$settingsGlobalBooleanFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$CollectAirplaneModeAndFinishIfOn$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$CollectAirplaneModeAndFinishIfOn$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, v2, v0, v3}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$CollectAirplaneModeAndFinishIfOn$2;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$CollectAirplaneModeAndFinishIfOn$2;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final MobileDataSectionImpl(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "mobileDataSelectedId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonDds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4f5a5792

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v0, v0, 0x5b

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v6, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    new-instance v1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v0, 0x0

    invoke-direct {v6, v1, v4, v0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/SubscriptionManager;

    const v0, 0x7f141803

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$1;-><init>(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    const v1, 0xe5cc992

    invoke-static {v1, v7, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v0, v1, p2, v2}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->Category(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$MobileDataSectionImpl$2;-><init>(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final PrimarySimImpl(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroid/telephony/SubscriptionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v14, p14

    const-string v0, "primarySimInfo"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callsSelectedId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textsSelectedId"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileDataSelectedId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p11

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x2e9549e6

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, v14, 0x10

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    and-int/lit8 v6, v14, 0x20

    if-eqz v6, :cond_1

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    const-class v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionManager;

    const v7, -0x70001

    and-int v7, p12, v7

    goto :goto_1

    :cond_1
    move-object/from16 v6, p5

    move/from16 v7, p12

    :goto_1
    and-int/lit8 v8, v14, 0x40

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v9, :cond_2

    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v8, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v8

    invoke-static {v8, v0}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v8

    :cond_2
    check-cast v8, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v8, v8, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v9, -0x380001

    and-int/2addr v7, v9

    goto :goto_2

    :cond_3
    move-object/from16 v8, p6

    :goto_2
    and-int/lit16 v9, v14, 0x80

    if-eqz v9, :cond_4

    sget-object v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    const v10, -0x1c00001

    and-int/2addr v7, v10

    goto :goto_3

    :cond_4
    move-object/from16 v9, p7

    :goto_3
    and-int/lit16 v10, v14, 0x100

    if-eqz v10, :cond_5

    new-instance v10, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;

    invoke-direct {v10, v2, v8, v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$1;-><init>(Landroidx/compose/runtime/MutableIntState;Lkotlinx/coroutines/CoroutineScope;Landroid/telephony/SubscriptionManager;)V

    const v11, -0xe000001

    and-int/2addr v7, v11

    goto :goto_4

    :cond_5
    move-object/from16 v10, p8

    :goto_4
    and-int/lit16 v11, v14, 0x200

    if-eqz v11, :cond_6

    new-instance v11, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$2;

    invoke-direct {v11, v3, v8, v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$2;-><init>(Landroidx/compose/runtime/MutableIntState;Lkotlinx/coroutines/CoroutineScope;Landroid/telephony/SubscriptionManager;)V

    const v12, -0x70000001

    and-int/2addr v7, v12

    goto :goto_5

    :cond_6
    move-object/from16 v11, p9

    :goto_5
    and-int/lit16 v12, v14, 0x400

    if-eqz v12, :cond_7

    new-instance v12, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;

    invoke-direct {v12, v8, v9, v6, v5}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$3;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    and-int/lit8 v13, p13, -0xf

    goto :goto_6

    :cond_7
    move-object/from16 v12, p10

    move/from16 v13, p13

    :goto_6
    sget-object v15, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v15, 0x7f141ce8

    invoke-static {v0, v15}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;->callsAndSmsList:Ljava/util/List;

    const v3, 0x7f080569

    invoke-static {v0, v3}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    shl-int/lit8 v4, v7, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x40

    shr-int/lit8 v16, v7, 0xc

    const v17, 0xe000

    and-int v16, v16, v17

    or-int v4, v4, v16

    move-object/from16 p4, v15

    move-object/from16 p5, v2

    move-object/from16 p6, p1

    move-object/from16 p7, v3

    move-object/from16 p8, v10

    move-object/from16 p9, v0

    move/from16 p10, v4

    invoke-static/range {p4 .. p10}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt;->CreatePrimarySimListPreference(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const v2, 0x7f141ce9

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;->callsAndSmsList:Ljava/util/List;

    sget-object v4, Landroidx/compose/material/icons/automirrored/outlined/MessageKt;->_message:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v4, :cond_8

    move-object/from16 v21, v6

    move-object/from16 v20, v8

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    goto/16 :goto_7

    :cond_8
    new-instance v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v24, 0x0

    const/16 v28, 0x60

    const-string v19, "AutoMirrored.Outlined.Message"

    const/high16 v20, 0x41c00000    # 24.0f

    const/high16 v21, 0x41c00000    # 24.0f

    const/high16 v22, 0x41c00000    # 24.0f

    const/high16 v23, 0x41c00000    # 24.0f

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v16, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v15, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v9, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v10, 0x40a570a4    # 5.17f

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v9, v10, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41895c29    # 17.17f

    const/high16 v14, 0x40800000    # 4.0f

    invoke-virtual {v9, v14, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v14, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    iget-object v10, v9, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    new-instance v14, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    move-object/from16 v20, v8

    const/4 v8, 0x0

    move-object/from16 v21, v6

    const/high16 v6, -0x40000000    # -2.0f

    invoke-direct {v14, v8, v6}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v8, -0x400147ae    # -1.99f

    const/high16 v10, 0x40000000    # 2.0f

    const v14, -0x40733333    # -1.1f

    const/16 v22, 0x0

    const v23, -0x400147ae    # -1.99f

    const v24, 0x3f666666    # 0.9f

    move-object/from16 p4, v9

    move/from16 p5, v14

    move/from16 p6, v22

    move/from16 p7, v23

    move/from16 p8, v24

    move/from16 p9, v8

    move/from16 p10, v10

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-virtual {v9, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v14, -0x3f800000    # -4.0f

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v9, v6, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v9, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v23, -0x40000000    # -2.0f

    const v24, 0x3f8ccccd    # 1.1f

    const/16 v25, 0x0

    const/high16 v26, 0x40000000    # 2.0f

    const v27, -0x4099999a    # -0.9f

    move/from16 p5, v24

    move/from16 p6, v25

    move/from16 p7, v26

    move/from16 p8, v27

    move/from16 p9, v14

    move/from16 p10, v23

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v14, 0x40800000    # 4.0f

    invoke-virtual {v9, v10, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v23, 0x0

    const v24, -0x40733333    # -1.1f

    const v25, -0x4099999a    # -0.9f

    const/high16 v26, -0x40000000    # -2.0f

    move/from16 p5, v23

    move/from16 p6, v24

    move/from16 p7, v25

    move/from16 p8, v26

    move/from16 p9, v10

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v9, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v9, v10, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v9, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v9, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v9, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v9, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v9, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v9, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v9, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v9, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v9, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v9, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v6, v9, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v4, v6, v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    sput-object v4, Landroidx/compose/material/icons/automirrored/outlined/MessageKt;->_message:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_7
    and-int/lit16 v6, v7, 0x380

    or-int/lit8 v6, v6, 0x40

    shr-int/lit8 v8, v7, 0xf

    and-int v8, v8, v17

    or-int/2addr v6, v8

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, p2

    move-object/from16 p7, v4

    move-object/from16 p8, v11

    move-object/from16 p9, v0

    move/from16 p10, v6

    invoke-static/range {p4 .. p10}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt;->CreatePrimarySimListPreference(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const v2, 0x7f141803

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;->dataList:Ljava/util/List;

    sget-object v4, Landroidx/compose/material/icons/outlined/DataUsageKt;->_dataUsage:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v4, :cond_9

    goto/16 :goto_8

    :cond_9
    new-instance v4, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v28, 0x0

    const/16 v32, 0x60

    const-string v23, "Outlined.DataUsage"

    const/high16 v24, 0x41c00000    # 24.0f

    const/high16 v25, 0x41c00000    # 24.0f

    const/high16 v26, 0x41c00000    # 24.0f

    const/high16 v27, 0x41c00000    # 24.0f

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v32}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v6, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v9, 0x41500000    # 13.0f

    const v10, 0x40033333    # 2.05f

    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v9, 0x4041eb85    # 3.03f

    invoke-virtual {v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v9, 0x40c00000    # 6.0f

    const v14, 0x40dd70a4    # 6.92f

    const v15, 0x4058f5c3    # 3.39f

    const v19, 0x3efae148    # 0.49f

    const/high16 v22, 0x40c00000    # 6.0f

    const v23, 0x4058f5c3    # 3.39f

    move-object/from16 p4, v8

    move/from16 p5, v15

    move/from16 p6, v19

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v9

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, -0x410a3d71    # -0.48f

    const v14, 0x40228f5c    # 2.54f

    const/4 v15, 0x0

    const v19, 0x3f666666    # 0.9f

    const v22, -0x41c7ae14    # -0.18f

    const/high16 v23, 0x3fe00000    # 1.75f

    move/from16 p5, v15

    move/from16 p6, v19

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v9

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, 0x40266666    # 2.6f

    const v14, 0x3fc3d70a    # 1.53f

    invoke-virtual {v8, v9, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v9, 0x3f6147ae    # 0.88f

    const v14, -0x3f7dc28f    # -4.07f

    const v15, 0x3f0f5c29    # 0.56f

    const v19, -0x406147ae    # -1.24f

    const v22, 0x3f6147ae    # 0.88f

    const v23, -0x3fd851ec    # -2.62f

    move/from16 p5, v15

    move/from16 p6, v19

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v9

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v9, -0x3ef00000    # -9.0f

    const v14, -0x3ee0cccd    # -9.95f

    const/4 v15, 0x0

    const v19, -0x3f5a3d71    # -5.18f

    const v22, -0x3f833333    # -3.95f

    const v23, -0x3ee8cccd    # -9.45f

    move/from16 p5, v15

    move/from16 p6, v19

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v9

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v8, v14, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v9, -0x3f200000    # -7.0f

    const/high16 v14, -0x3f200000    # -7.0f

    const v15, -0x3f8851ec    # -3.87f

    const/16 v19, 0x0

    const/high16 v22, -0x3f200000    # -7.0f

    const v23, -0x3fb7ae14    # -3.13f

    move/from16 p5, v15

    move/from16 p6, v19

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v9

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v9, 0x40c00000    # 6.0f

    const v14, -0x3f228f5c    # -6.92f

    const/4 v15, 0x0

    const v19, -0x3f9e147b    # -3.53f

    const v22, 0x40270a3d    # 2.61f

    const v23, -0x3f323d71    # -6.43f

    move/from16 p5, v15

    move/from16 p6, v19

    move/from16 p7, v22

    move/from16 p8, v23

    move/from16 p9, v9

    move/from16 p10, v14

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const/high16 v9, -0x3ef00000    # -9.0f

    const v10, 0x411f3333    # 9.95f

    const v14, -0x3f5e147b    # -5.06f

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v19, -0x3ef00000    # -9.0f

    const v22, 0x409851ec    # 4.76f

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v19

    move/from16 p8, v22

    move/from16 p9, v9

    move/from16 p10, v10

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, 0x411fd70a    # 9.99f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v14, 0x0

    const v15, 0x40b0a3d7    # 5.52f

    const v19, 0x408f0a3d    # 4.47f

    const/high16 v22, 0x41200000    # 10.0f

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v19

    move/from16 p8, v22

    move/from16 p9, v9

    move/from16 p10, v10

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, 0x4100f5c3    # 8.06f

    const v10, -0x3f7d1eb8    # -4.09f

    const v14, 0x4053d70a    # 3.31f

    const/4 v15, 0x0

    const v19, 0x40c7ae14    # 6.24f

    const v22, -0x4031eb85    # -1.61f

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v19

    move/from16 p8, v22

    move/from16 p9, v9

    move/from16 p10, v10

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v9, -0x3fd9999a    # -2.6f

    const v10, -0x403c28f6    # -1.53f

    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41980000    # 19.0f

    const v14, 0x41815c29    # 16.17f

    const v15, 0x418fd70a    # 17.98f

    const v19, 0x41635c29    # 14.21f

    const/high16 v22, 0x41980000    # 19.0f

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v19

    move/from16 p8, v22

    move/from16 p9, v9

    move/from16 p10, v10

    invoke-virtual/range {p4 .. p10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v8, v8, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v4, v8, v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    sput-object v4, Landroidx/compose/material/icons/outlined/DataUsageKt;->_dataUsage:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_8
    shr-int/lit8 v6, v7, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/lit8 v6, v6, 0x40

    shl-int/lit8 v7, v13, 0xc

    and-int v7, v7, v17

    or-int/2addr v6, v7

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, p3

    move-object/from16 p7, v4

    move-object/from16 p8, v12

    move-object/from16 p9, v0

    move/from16 p10, v6

    invoke-static/range {p4 .. p10}, Lcom/android/settings/spa/network/SimOnboardingPrimarySimKt;->CreatePrimarySimListPreference(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_a

    new-instance v14, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, v21

    move-object/from16 v7, v20

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v33, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimImpl$4;-><init>(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Landroid/telephony/SubscriptionManager;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v33

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final PrimarySimSectionImpl(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "subscriptionInfoListFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callsSelectedId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textsSelectedId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileDataSelectedId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xf5bc26d

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v7, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    new-instance v2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 v1, 0x0

    invoke-direct {v7, v2, v0, v1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    const v2, 0x5fa8c19d

    invoke-virtual {p4, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_1

    :cond_0
    new-instance v2, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    new-instance v3, Lcom/android/settings/spa/network/PrimarySimRepository;

    invoke-direct {v3, v0}, Lcom/android/settings/spa/network/PrimarySimRepository;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$lambda$2$$inlined$map$2;

    invoke-direct {v0, v2, v3}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$lambda$2$$inlined$map$2;-><init>(Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;Lcom/android/settings/spa/network/PrimarySimRepository;)V

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v0, 0x38

    invoke-static {v3, v1, p4, v0}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;

    if-nez v3, :cond_3

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_2

    new-instance v6, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$primarySimInfo$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$primarySimInfo$2;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;I)V

    iput-object v6, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f141cea

    invoke-static {p4, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$1;-><init>(Lcom/android/settings/spa/network/PrimarySimRepository$PrimarySimInfo;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    const v2, 0x61e17fc9

    invoke-static {v2, v1, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v0, v1, p4, v2}, Lcom/android/settingslib/spa/widget/ui/CategoryKt;->Category(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_4

    new-instance v6, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$PrimarySimSectionImpl$2;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;I)V

    iput-object v6, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final setDefaultData(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Lcom/android/settings/wifi/WifiPickerTrackerHelper;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v8, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v1, v8

    move v2, p3

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setMobileData$2;-><init>(IZLandroid/telephony/SubscriptionManager;Landroid/content/Context;Lcom/android/settings/wifi/WifiPickerTrackerHelper;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v8, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static final setDefaultSms(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setDefaultSms$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setDefaultSms$2;-><init>(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final setDefaultVoice(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setDefaultVoice$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$setDefaultVoice$2;-><init>(Landroid/telephony/SubscriptionManager;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
