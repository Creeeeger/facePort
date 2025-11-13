.class public abstract Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final RestrictedSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;",
            "Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictionsProviderFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x277966bb

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x1683e6b6

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->enhancedConfirmation:Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-static {p0, p3, v0}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceKt$RestrictedSwitchPreference$3;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceKt$RestrictedSwitchPreference$3;-><init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->Companion:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;

    sget-object v5, Lcom/android/settingslib/spaprivileged/template/preference/ComposableSingletons$RestrictedSwitchPreferenceKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v0, p4, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v7, v0, 0x6e40

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;->RestrictedSwitchWrapper(Lkotlin/jvm/functions/Function2;Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_3

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceKt$RestrictedSwitchPreference$4;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceKt$RestrictedSwitchPreference$4;-><init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
