.class public final Lcom/android/settings/spa/network/NetworkCellularGroupProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# instance fields
.field public defaultDataSubId:I

.field public defaultSmsSubId:I

.field public defaultVoiceSubId:I

.field public nonDds:I


# virtual methods
.method public final OtherSection(Landroidx/compose/runtime/Composer;I)V
    .locals 1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x3f02415c

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$OtherSection$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$OtherSection$1;-><init>(Lcom/android/settings/spa/network/NetworkCellularGroupProvider;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    const/4 v1, 0x0

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x643f47dc

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/Context;

    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$callsSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$callsSelectedId$1;

    const/4 v7, 0x6

    const/4 v3, 0x0

    const/16 v6, 0xc08

    move-object v5, v8

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$textsSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$textsSelectedId$1;

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$mobileDataSelectedId$1;->INSTANCE:Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$mobileDataSelectedId$1;

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$nonDdsRemember$1;->INSTANCE:Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$nonDdsRemember$1;

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$showMobileDataSection$1;->INSTANCE:Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$showMobileDataSection$1;

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const v2, 0x671a9c9b

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v3, v2, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v3}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_0
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v5, Lcom/android/settings/network/SubscriptionInfoListViewModel;

    invoke-virtual {v4, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5, v3, v8}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->viewModel(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v2, Lcom/android/settings/network/SubscriptionInfoListViewModel;

    invoke-static {v8, v1}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt;->CollectAirplaneModeAndFinishIfOn(Landroidx/compose/runtime/Composer;I)V

    const v3, 0x155c2e11

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v6, -0x1

    iget-object v7, v2, Lcom/android/settings/network/SubscriptionInfoListViewModel;->selectableSubscriptionInfoListFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-ne v3, v4, :cond_1

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v5}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v4}, Lcom/android/settingslib/spaprivileged/framework/common/BroadcastReceiverFlowKt;->broadcastReceiverFlow(Landroid/content/Context;Landroid/content/IntentFilter;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    filled-new-array {v3, v4}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v3

    new-instance v4, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;

    const/4 v10, 0x2

    invoke-direct {v4, v3, v10}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    invoke-static {v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v10, v5}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v5}, Lcom/android/settingslib/spaprivileged/framework/common/BroadcastReceiverFlowKt;->broadcastReceiverFlow(Landroid/content/Context;Landroid/content/IntentFilter;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    filled-new-array {v10, v0}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v0

    new-instance v5, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;

    invoke-direct {v5, v0, v1}, Lcom/android/settings/spa/network/NetworkCellularGroupProviderKt$defaultSmsSubscriptionFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v5, Lcom/android/settings/network/telephony/DataSubscriptionRepository;

    invoke-direct {v5, v9}, Lcom/android/settings/network/telephony/DataSubscriptionRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/settings/network/telephony/DataSubscriptionRepository;->defaultDataSubscriptionIdFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v9, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$allOfFlows$1;

    const-class v21, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    const-string v22, "refreshUiStates"

    const/16 v19, 0x5

    const-string v23, "refreshUiStates(Ljava/util/List;III)V"

    const/16 v24, 0x4

    move-object/from16 v18, v9

    move-object/from16 v20, p0

    invoke-direct/range {v18 .. v24}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v10, "flow"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "flow2"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "flow3"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "flow4"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v7, v3, v0, v5}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v9, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/Function;I)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;

    const/16 v16, 0x0

    move-object v10, v4

    move-object v9, v11

    move-object v11, v15

    move-object/from16 v17, v12

    move-object/from16 v12, p0

    move-object/from16 v18, v13

    move-object v13, v14

    move-object/from16 v19, v14

    move-object/from16 v14, v18

    move-object/from16 v20, v15

    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/spa/network/NetworkCellularGroupProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v0, v4}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v3, 0x38

    invoke-static {v7, v0, v8, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v11

    if-le v11, v6, :cond_2

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    move v1, v5

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const v1, 0x7f141dc7

    invoke-static {v8, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;

    move-object v10, v3

    move-object v11, v9

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    move-object v14, v2

    move-object/from16 v15, v20

    move-object/from16 v16, v19

    move-object/from16 v17, p0

    move-object/from16 v18, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SubscriptionInfoListViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/spa/network/NetworkCellularGroupProvider;Landroidx/compose/runtime/MutableState;)V

    const v0, 0x601770a9

    invoke-static {v0, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/16 v6, 0x180

    move-object v2, v1

    move-object v5, v8

    invoke-static/range {v2 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$5;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$5;-><init>(Lcom/android/settings/spa/network/NetworkCellularGroupProvider;Landroid/os/Bundle;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x65b

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkCellularGroupProvider"

    return-object p0
.end method
