.class public abstract Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final access$AppInfoSettings(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4b248da5

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->flow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0, p1}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    new-instance v1, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v1}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    const v2, 0x7f1403c9

    invoke-static {p1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    const v1, 0x1329461d

    invoke-static {v1, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;

    invoke-direct {v3, v0, p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$2;-><init>(Landroidx/compose/runtime/MutableState;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    const v0, 0x6d56a5f6

    invoke-static {v0, v3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v4, 0x1b0

    const/4 v5, 0x0

    move-object v0, v2

    move-object v2, v3

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$3;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method
