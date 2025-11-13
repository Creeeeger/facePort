.class public final Lcom/android/settings/spa/system/AppLanguagesListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/system/AppLanguagesListModel;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x594881ed

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$1;-><init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V

    const/16 v1, 0x8

    invoke-static {p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/system/AppLanguagesListModel$AppItem$2;-><init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p0, "recordListFlow"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/spa/system/AppLanguagesListModel$filter$$inlined$filterItem$1;

    invoke-direct {p0, p3}, Lcom/android/settings/spa/system/AppLanguagesListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    return-object p0
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 2

    check-cast p2, Lcom/android/settings/spa/system/AppLanguagesRecord;

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x4813a13e

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p2, Lcom/android/settings/spa/system/AppLanguagesRecord;->app:Landroid/content/pm/ApplicationInfo;

    const v0, -0x4f1050

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance p1, Lcom/android/settings/spa/system/AppLanguagesListModel$getSummary$summary$2$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settings/spa/system/AppLanguagesListModel$getSummary$summary$2$1;-><init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lcom/android/settings/spa/system/AppLanguagesRecord;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const p1, 0x7f142e0a

    invoke-static {p3, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {v0, p1, p3, p2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    const p2, -0x4f0f62

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesListModel$getSummary$1$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/system/AppLanguagesListModel$getSummary$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settings/spa/system/AppLanguagesListModel;)V

    new-instance p1, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/settings/spa/system/AppLanguagesListModel$transform$2;-><init>(Lcom/android/settings/spa/system/AppLanguagesListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method
