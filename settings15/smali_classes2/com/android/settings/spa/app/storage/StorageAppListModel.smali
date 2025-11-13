.class public final Lcom/android/settings/spa/app/storage/StorageAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final getStorageSummary:Lkotlin/jvm/functions/Function3;

.field public final type:Lcom/android/settings/spa/app/storage/StorageType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/spa/app/storage/StorageType;)V
    .locals 2

    sget-object v0, Lcom/android/settings/spa/app/storage/StorageAppListModel$1;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageAppListModel$1;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getStorageSummary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/storage/StorageAppListModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/storage/StorageAppListModel;->type:Lcom/android/settings/spa/app/storage/StorageType;

    iput-object v0, p0, Lcom/android/settings/spa/app/storage/StorageAppListModel;->getStorageSummary:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5559762d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v0, Lcom/android/settings/spa/app/storage/AppRecordWithSize;

    iget-object v0, v0, Lcom/android/settings/spa/app/storage/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->navigator(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/storage/StorageAppListModel$AppItem$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/storage/StorageAppListModel$AppItem$1;-><init>(Lcom/android/settings/spa/app/storage/StorageAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p1, "recordListFlow"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/spa/app/storage/StorageAppListModel$filter$$inlined$filterItem$1;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p0, p2}, Lcom/android/settings/spa/app/storage/StorageAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/storage/StorageAppListModel;I)V

    return-object p1
.end method

.method public final getComparator(I)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/storage/StorageAppListModel$getComparator$$inlined$compareByDescending$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-super {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getComparator(I)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda1;

    new-instance p1, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda1;)V

    return-object p1
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p2, Lcom/android/settings/spa/app/storage/AppRecordWithSize;

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x45d8b702

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p2, Lcom/android/settings/spa/app/storage/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/spa/app/storage/StorageAppListModel;->getStorageSummary:Lkotlin/jvm/functions/Function3;

    invoke-interface {p0, p1, p3, p2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/State;

    const p1, -0x7f118b24

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_0

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p1, :cond_1

    :cond_0
    new-instance p2, Lcom/android/settings/spa/app/storage/StorageAppListModel$getSummary$1$1;

    invoke-direct {p2, p0}, Lcom/android/settings/spa/app/storage/StorageAppListModel$getSummary$1$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p2
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    new-instance p1, Lcom/android/settings/spa/app/storage/StorageAppListModel$filter$$inlined$filterItem$1;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settings/spa/app/storage/StorageAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/storage/StorageAppListModel;I)V

    return-object p1
.end method
