.class public final Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appChangeFlow:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;

.field public final context:Landroid/content/Context;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

.field public final flow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final metricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field public final packageName:Ljava/lang/String;

.field public final userContext$delegate:Lkotlin/Lazy;

.field public final userHandle:Landroid/os/UserHandle;

.field public final userId:I

.field public final userPackageManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlinx/coroutines/internal/ContextScope;)V
    .locals 3

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    new-instance v1, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v1}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "packageManagers"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userId:I

    iput-object p4, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    iput-object v1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->metricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userHandle:Landroid/os/UserHandle;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$userContext$2;

    invoke-direct {p3, p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$userContext$2;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userContext$delegate:Lkotlin/Lazy;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$userPackageManager$2;

    invoke-direct {p3, p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$userPackageManager$2;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userPackageManager$delegate:Lkotlin/Lazy;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "userHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/spaprivileged/framework/common/BroadcastReceiverAsUserFlowKt;->broadcastReceiverAsUserFlow(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;I)V

    new-instance p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p0, p3}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;I)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    filled-new-array {p2, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object p1

    new-instance p2, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;I)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p4, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {p2, p1, p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->flow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final PackageFullyRemovedEffect(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5e751df4

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userHandle:Landroid/os/UserHandle;

    const-string v3, "userHandle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$PackageFullyRemovedEffect$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$PackageFullyRemovedEffect$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V

    const/16 v1, 0x48

    invoke-static {v0, v2, v3, p1, v1}, Lcom/android/settingslib/spaprivileged/framework/compose/DisposableBroadcastReceiverAsUserKt;->DisposableBroadcastReceiverAsUser(Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$PackageFullyRemovedEffect$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$PackageFullyRemovedEffect$2;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final getUserPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userPackageManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public final isInterestedAppChange(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.intent.extra.ARCHIVAL"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final logAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->metricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public final requireAuthAndExecute(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$requireAuthAndExecute$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$requireAuthAndExecute$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
