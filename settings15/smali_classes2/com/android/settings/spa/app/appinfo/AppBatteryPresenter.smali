.class public final Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final batteryDiffEntryState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final context:Landroid/content/Context;

.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final summary:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->app:Landroid/content/pm/ApplicationInfo;

    sget-object p1, Lcom/android/settings/spa/app/appinfo/LoadingState$Loading;->INSTANCE:Lcom/android/settings/spa/app/appinfo/LoadingState$Loading;

    sget-object p2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->batteryDiffEntryState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$enabled$1;

    invoke-direct {p1, p0}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$enabled$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->enabled:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;

    invoke-direct {p1, p0}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$summary$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->summary:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final Updater(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3a319323

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v0, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;->app:Landroid/content/pm/ApplicationInfo;

    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$2;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter$Updater$3;-><init>(Lcom/android/settings/spa/app/appinfo/AppBatteryPresenter;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
