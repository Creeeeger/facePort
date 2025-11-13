.class public abstract Lcom/android/settings/spa/network/SimsSectionKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AddSim(Landroidx/compose/runtime/Composer;I)V
    .locals 5

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6552f1c

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

    const v1, 0x6a3f4f11

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$2;-><init>(Landroidx/compose/runtime/Composer;Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    const-string v3, "no_config_mobile_networks"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;-><init>(ILjava/util/List;I)V

    const/16 v2, 0x40

    invoke-static {v1, v0, p0, v2}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->RestrictedPreference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v0, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$3;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/network/SimsSectionKt$AddSim$3;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final SimPreference(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xa9c94e7

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const v1, -0x499924f5

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_0

    if-ne v1, v12, :cond_1

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/SubscriptionRepository;

    invoke-direct {v0, v11}, Lcom/android/settings/network/telephony/SubscriptionRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/SubscriptionRepository;->isSubscriptionEnabledFlow(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x38

    invoke-static {v1, v0, v10, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-static {v9, v10}, Lcom/android/settings/spa/network/SimsSectionKt;->phoneNumber(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    const v1, -0x499923fa

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_2

    if-ne v4, v12, :cond_3

    :cond_2
    new-instance v1, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$isConvertedPsim$2$1;

    const/4 v4, 0x0

    invoke-direct {v1, v9, v4}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$isConvertedPsim$2$1;-><init>(Landroid/telephony/SubscriptionInfo;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v4, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4, v0, v10, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    const v1, -0x49992322

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_4

    new-instance v1, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    invoke-direct {v1, v11}, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v8, v1

    check-cast v8, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, -0x499922c9

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_5

    invoke-virtual {v8}, Lcom/android/settings/network/telephony/SubscriptionActivationRepository;->isActivationChangeableFlow()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v1, v0, v10, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_6

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, v10}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_6
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v0, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v15, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;

    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/internal/ContextScope;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$1;-><init>(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/network/telephony/SubscriptionActivationRepository;)V

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    const-string v0, "no_config_mobile_networks"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v1, v13, v0, v2}, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;-><init>(ILjava/util/List;I)V

    const v0, -0x49991e24

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_7

    if-ne v2, v12, :cond_8

    :cond_7
    new-instance v2, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$2$1;

    invoke-direct {v2, v14}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$3;

    invoke-direct {v3, v11, v9}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$3;-><init>(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    const/16 v5, 0x40

    const/4 v6, 0x0

    move-object v0, v15

    move-object v4, v10

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt;->RestrictedTwoTargetSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$4;

    move/from16 v2, p2

    invoke-direct {v1, v9, v2}, Lcom/android/settings/spa/network/SimsSectionKt$SimPreference$4;-><init>(Landroid/telephony/SubscriptionInfo;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final SimsSection(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "subscriptionInfoList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x439a7543

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    iget v2, p1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p1, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, p1, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-static {v2, p1, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x5eed657

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    const/16 v2, 0x8

    invoke-static {v1, p1, v2}, Lcom/android/settings/spa/network/SimsSectionKt;->SimPreference(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p1, v3}, Lcom/android/settings/spa/network/SimsSectionKt;->AddSim(Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settings/spa/network/SimsSectionKt$SimsSection$2;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/network/SimsSectionKt$SimsSection$2;-><init>(ILjava/util/List;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final access$SimIcon(ZLandroidx/compose/runtime/Composer;I)V
    .locals 36

    move/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x46064506

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v1, 0xe

    const/4 v4, 0x2

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v3, v3, 0xb

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v11, -0x3f000000    # -8.0f

    const/high16 v12, 0x41900000    # 18.0f

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    sget-object v14, Landroidx/compose/material/icons/outlined/SimCardDownloadKt;->_simCardDownload:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v14, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v16, "Outlined.SimCardDownload"

    const/high16 v17, 0x41c00000    # 24.0f

    const/high16 v18, 0x41c00000    # 24.0f

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const-wide/16 v21, 0x0

    const/16 v25, 0x60

    move-object v15, v14

    invoke-direct/range {v15 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v15, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v15, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v5, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v20, 0x3f666666    # 0.9f

    const/high16 v21, 0x40000000    # 2.0f

    const/16 v18, 0x0

    const v19, 0x3f8ccccd    # 1.1f

    const/high16 v22, 0x40000000    # 2.0f

    const/high16 v23, 0x40000000    # 2.0f

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v20, 0x40000000    # 2.0f

    const v21, -0x4099999a    # -0.9f

    const v18, 0x3f8ccccd    # 1.1f

    const/16 v19, 0x0

    const/high16 v23, -0x40000000    # -2.0f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const v20, 0x4198cccd    # 19.1f

    const/high16 v21, 0x40000000    # 2.0f

    const/high16 v18, 0x41a00000    # 20.0f

    const v19, 0x4039999a    # 2.9f

    const/high16 v22, 0x41900000    # 18.0f

    const/high16 v23, 0x40000000    # 2.0f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    const v6, 0x410d47ae    # 8.83f

    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const v6, 0x412d47ae    # 10.83f

    invoke-virtual {v5, v6, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v14, v5, v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v6, -0x3f800000    # -4.0f

    invoke-virtual {v3, v6, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v3, v6, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v6, 0x3fb47ae1    # 1.41f

    const v8, -0x404b851f    # -1.41f

    invoke-virtual {v3, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v6, 0x4152b852    # 13.17f

    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v3, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x411051ec    # 9.02f

    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v3, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x408570a4    # 4.17f

    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v6, 0x3fcb851f    # 1.59f

    const v8, -0x40347ae1    # -1.59f

    invoke-virtual {v3, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v3, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v3, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v14, v3, v5}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v14

    sput-object v14, Landroidx/compose/material/icons/outlined/SimCardDownloadKt;->_simCardDownload:Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_4

    :cond_5
    sget-object v3, Landroidx/compose/material/icons/outlined/SimCardKt;->_simCard:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v3, :cond_6

    :goto_3
    move-object v14, v3

    goto/16 :goto_4

    :cond_6
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v26, "Outlined.SimCard"

    const/high16 v27, 0x41c00000    # 24.0f

    const/high16 v28, 0x41c00000    # 24.0f

    const/high16 v29, 0x41c00000    # 24.0f

    const/high16 v30, 0x41c00000    # 24.0f

    const-wide/16 v31, 0x0

    const/16 v35, 0x60

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v4, v14, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v5, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v20, 0x3f666666    # 0.9f

    const/high16 v21, 0x40000000    # 2.0f

    const/16 v18, 0x0

    const v19, 0x3f8ccccd    # 1.1f

    const/high16 v22, 0x40000000    # 2.0f

    const/high16 v23, 0x40000000    # 2.0f

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v20, 0x40000000    # 2.0f

    const v21, -0x4099999a    # -0.9f

    const v18, 0x3f8ccccd    # 1.1f

    const/16 v19, 0x0

    const/high16 v23, -0x40000000    # -2.0f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v5, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, -0x4099999a    # -0.9f

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v18, 0x0

    const v19, -0x40733333    # -1.1f

    const/high16 v22, -0x40000000    # -2.0f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x410d47ae    # 8.83f

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x412d47ae    # 10.83f

    invoke-virtual {v5, v6, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v12, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v5, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v8, 0x41980000    # 19.0f

    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v5, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v10, 0x41300000    # 11.0f

    invoke-virtual {v5, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v6, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v5, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v5, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    invoke-static {v3, v5, v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    sput-object v3, Landroidx/compose/material/icons/outlined/SimCardKt;->_simCard:Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_3

    :goto_4
    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/android/settingslib/spa/widget/ui/IconKt;->SettingsIcon(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)V

    :goto_5
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lcom/android/settings/spa/network/SimsSectionKt$SimIcon$1;

    invoke-direct {v3, v1, v0}, Lcom/android/settings/spa/network/SimsSectionKt$SimIcon$1;-><init>(IZ)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final phoneNumber(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 3

    const-string v0, "subInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x79a8e32d

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, -0x18085727

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_1

    :cond_0
    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->subscriptionsChangedFlow(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt$phoneNumberFlow$$inlined$map$1;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt$phoneNumberFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    new-instance p0, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt$phoneNumberFlow$$inlined$filterNot$1;

    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt$phoneNumberFlow$$inlined$filterNot$1;-><init>(Lcom/android/settings/network/telephony/SubscriptionRepositoryKt$phoneNumberFlow$$inlined$map$1;)V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v0, 0x38

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, v0}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method
