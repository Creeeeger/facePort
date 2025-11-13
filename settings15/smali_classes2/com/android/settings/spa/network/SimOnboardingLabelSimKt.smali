.class public abstract Lcom/android/settings/spa/network/SimOnboardingLabelSimKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final LabelSimPreference(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2adde75c

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6580c7fc

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingService;->getSubscriptionInfoDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    move-object v6, v1

    check-cast v6, Landroidx/compose/runtime/MutableState;

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p1, p2}, Lcom/android/settings/spa/network/SimsSectionKt;->phoneNumber(Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v2, 0x7f141818

    invoke-static {p2, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    new-instance v4, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;

    invoke-direct {v4, p0, p1, v0, v6}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$1;-><init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v3, 0x7f1408bf

    invoke-static {p2, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;

    invoke-direct {v4, p0, p1, v6}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$2;-><init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/MutableState;)V

    const/4 v9, 0x2

    invoke-direct {v2, v3, v4, v9}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v3, 0x7f142c3a

    invoke-static {p2, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$3;

    invoke-direct {v4, v8, v6, v0}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$alertDialogPresenter$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    const v0, -0x4593cbc

    invoke-static {v0, v4, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v0

    new-instance v1, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;

    invoke-direct {v1, v0, v6, v8}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v1, v7, p2, v7, v9}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimPreference$2;-><init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public static final SimOnboardingLabelSimImpl(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "nextAction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x76ca4e48

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {}, Landroidx/compose/material/icons/outlined/SignalCellularAltKt;->getSignalCellularAlt()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v1

    const v0, 0x7f142c3c

    invoke-static {p3, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    const v0, 0x7f142c3d

    invoke-static {p3, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    const v5, 0x7f1408bf

    invoke-static {p3, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v4, p1}, Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    new-instance v4, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$SimOnboardingLabelSimImpl$1;

    invoke-direct {v4, p2}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$SimOnboardingLabelSimImpl$1;-><init>(Lcom/android/settings/network/SimOnboardingService;)V

    const v5, 0x3d77017c

    invoke-static {v5, v4, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/16 v7, 0x6000

    const/4 v8, 0x0

    move-object v4, v0

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt;->SuwScaffold(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$SimOnboardingLabelSimImpl$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$SimOnboardingLabelSimImpl$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settings/network/SimOnboardingService;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final access$LabelSimBody(Lcom/android/settings/network/SimOnboardingService;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x4c130024    # 3.853531E7f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    const v1, 0x7f142c3b

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/settings/spa/network/SimOnboardingPageProviderKt;->SimOnboardingMessage(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingService;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    const/16 v2, 0x48

    invoke-static {p0, v1, p1, v2}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt;->LabelSimPreference(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimBody$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/network/SimOnboardingLabelSimKt$LabelSimBody$1;-><init>(Lcom/android/settings/network/SimOnboardingService;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method
