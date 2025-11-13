.class public interface abstract Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public InfoPageAdditionalContent(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isAllowed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x146fc946

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_1
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_2

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel$InfoPageAdditionalContent$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel$InfoPageAdditionalContent$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public abstract filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;
.end method

.method public getEnhancedConfirmationKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFooterResId()I
.end method

.method public abstract getPageTitleResId()I
.end method

.method public getSwitchRestrictionKeys()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public abstract getSwitchTitleResId()I
.end method

.method public abstract isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
.end method

.method public abstract isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z
.end method

.method public abstract setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
.end method

.method public transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel$transform$$inlined$asyncMapItem$1;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel$transform$$inlined$asyncMapItem$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;)V

    return-object p1
.end method

.method public abstract transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
.end method
