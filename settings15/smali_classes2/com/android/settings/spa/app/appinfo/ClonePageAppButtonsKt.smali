.class public abstract Lcom/android/settings/spa/app/appinfo/ClonePageAppButtonsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final ClonePageAppButtons(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    const-string v0, "packageInfoPresenter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x17914b59

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x6811f73d

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;

    invoke-direct {v0, p0}, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x46ee9737

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v3, v0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v3, v3, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->flow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-static {v3, v5, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5

    const v4, -0x583ee98b

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->appLaunchButton:Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x4754f9b0

    invoke-virtual {p1, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v5, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v4, v4, Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton;->context:Landroid/content/Context;

    const v6, 0x7f1414bd

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "getString(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/material/icons/outlined/LaunchKt;->getLaunch()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    sget-object v8, Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton$getActionButton$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/FakeAppLaunchButton$getActionButton$1;

    invoke-direct {v5, v4, v7, v2, v8}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v4, v0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->appCreateButton:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, -0x48251d43

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, -0x7651c997

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_2

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, p1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v7

    :cond_2
    check-cast v7, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v1, v7, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v7, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    new-instance v8, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v9, v4, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->context:Landroid/content/Context;

    const v10, 0x7f140ac0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/material/icons/outlined/AddKt;->getAdd()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v10

    iget-object v11, v4, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->enabledState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    new-instance v12, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;

    check-cast v1, Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v12, v4, v3, v1, v7}, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppCreateButton;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/android/settingslib/spa/widget/button/ActionButton;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/CloneAppButtonsPresenter;->appForceStopButton:Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton;->context:Landroid/content/Context;

    const v3, 0x7f141009

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/material/icons/outlined/WarningAmberKt;->getWarningAmber()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    sget-object v4, Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton$getActionButton$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/FakeAppForceStopButton$getActionButton$1;

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/android/settingslib/spa/widget/button/ActionButton;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;ZLkotlin/jvm/functions/Function0;)V

    filled-new-array {v5, v8, v1}, [Lcom/android/settingslib/spa/widget/button/ActionButton;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    if-nez v5, :cond_3

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_3
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v0, 0x8

    invoke-static {v5, p1, v0}, Lcom/android/settingslib/spa/widget/button/ActionButtonsKt;->ActionButtons(Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/appinfo/ClonePageAppButtonsKt$ClonePageAppButtons$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/ClonePageAppButtonsKt$ClonePageAppButtons$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
