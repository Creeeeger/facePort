.class public final Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7379b52b

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$1;-><init>(Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;)V

    const/16 v1, 0x8

    invoke-static {p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$AppItem$2;-><init>(Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p0, "recordListFlow"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$filter$$inlined$filterItem$1;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    return-object p0
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p2, Lcom/android/settings/spa/development/compat/PlatformCompatAppRecord;

    const-string p0, "record"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p0, -0x35722db6    # -4647205.0f

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$getSummary$1;

    invoke-direct {p0, p2}, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$getSummary$1;-><init>(Lcom/android/settings/spa/development/compat/PlatformCompatAppRecord;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$filter$$inlined$filterItem$1;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/spa/development/compat/PlatformCompatAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    return-object p0
.end method
