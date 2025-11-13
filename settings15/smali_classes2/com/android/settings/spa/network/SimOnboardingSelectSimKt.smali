.class public abstract Lcom/android/settings/spa/network/SimOnboardingSelectSimKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SimOnboardingSelectSimImpl(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "nextAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x76e1b728

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SimOnboardingSelectSimImpl$actionButtonController$1;->INSTANCE:Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SimOnboardingSelectSimImpl$actionButtonController$1;

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/16 v5, 0xc08

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/material/icons/outlined/SignalCellularAltKt;->getSignalCellularAlt()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    const v2, 0x7f142c43

    invoke-static {p3, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    const v4, 0x7f142c3d

    invoke-static {p3, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v3, v4, v5, p0}, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    const v5, 0x7f1408bf

    invoke-static {p3, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, p1}, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    new-instance v5, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SimOnboardingSelectSimImpl$1;

    invoke-direct {v5, p2, v0}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SimOnboardingSelectSimImpl$1;-><init>(Lcom/android/settings/network/SimOnboardingService;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const v0, 0x200e25ec

    invoke-static {v0, v5, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/16 v7, 0x6000

    const/4 v8, 0x0

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt;->SuwScaffold(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SimOnboardingSelectSimImpl$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SimOnboardingSelectSimImpl$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/SimOnboardingService;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final access$SelectSimBody(Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x129f6c69

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f142c42

    invoke-static {v9, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt;->SimOnboardingMessage(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    iget-object v0, v7, Lcom/android/settings/network/SimOnboardingService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v7, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/network/SimOnboardingService;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v7, v6}, Lcom/android/settings/network/SimOnboardingService;->getSubscriptionInfoDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v6, v9}, Lcom/android/settings/spa/network/SimsSectionKt;->phoneNumber(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v0, v10, [Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;

    invoke-direct {v2, v7, v6}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;-><init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;)V

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v1, 0x0

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const v0, -0x6171b815

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_2

    new-instance v15, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;

    move-object v0, v15

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, p0

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$1$1;

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x6

    invoke-static {v0, v9, v1}, Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceKt;->CheckboxPreference(Lcom/android/settingslib/spa/widget/preference/CheckboxPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$2;

    move/from16 v2, p3

    invoke-direct {v1, v7, v8, v2}, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$2;-><init>(Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/MutableState;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
