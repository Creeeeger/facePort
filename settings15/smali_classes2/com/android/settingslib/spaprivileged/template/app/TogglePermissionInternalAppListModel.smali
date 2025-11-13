.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final listModel:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

.field public final permissionType:Ljava/lang/String;

.field public final restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictionsProviderFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->permissionType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->listModel:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5b3d2ca4

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->PAGE_PARAMETER:Ljava/util/List;

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    invoke-interface {v0}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->permissionType:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion;->navigator(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    and-int/lit8 v1, p3, 0xe

    invoke-static {p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$AppItem$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$AppItem$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p2, "recordListFlow"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;

    invoke-direct {p2, p3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->listModel:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x441a1cb8

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 p1, 0x40

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->getSummary(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final getSummary(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 7

    const-string p3, "record"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p3, 0x5e6ea6e5

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p3

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v1, 0x215fefb9

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p3

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->listModel:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    if-nez p3, :cond_0

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p3

    invoke-interface {v2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getSwitchRestrictionKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getEnhancedConfirmationKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRecord;->getApp()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "packageName"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3, v5}, Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    new-instance v3, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    invoke-direct {v3, p3, v0, v4}, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;-><init>(ILjava/util/List;Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_2
    check-cast v0, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v0, p2}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderKt;->rememberRestrictedMode(Lkotlin/jvm/functions/Function2;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->context:Landroid/content/Context;

    const v3, 0x215ff274

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    new-instance v4, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$1$1;

    invoke-direct {v4, v0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$getSummary$2;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v4, v0, p1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;->getSummary(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;->listModel:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
