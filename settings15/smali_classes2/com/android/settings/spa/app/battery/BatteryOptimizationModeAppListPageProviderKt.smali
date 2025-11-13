.class public abstract Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final BatteryOptimizationModeAppList(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 12

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6198ff88

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 v2, p2, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p2, 0xe

    if-nez v2, :cond_2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v2, p2

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    and-int/lit8 v3, v2, 0xb

    if-ne v3, v1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/settings/spa/app/battery/ComposableSingletons$BatteryOptimizationModeAppListPageProviderKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f14035e

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProviderKt$BatteryOptimizationModeAppList$1;->INSTANCE:Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProviderKt$BatteryOptimizationModeAppList$1;

    invoke-static {v1, p1}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xe000000

    and-int/2addr v2, v3

    or-int/lit8 v10, v2, 0x40

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v11, 0xfc

    move-object v8, p0

    move-object v9, p1

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProviderKt$BatteryOptimizationModeAppList$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListPageProviderKt$BatteryOptimizationModeAppList$2;-><init>(Lkotlin/jvm/functions/Function3;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
