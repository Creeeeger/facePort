.class public abstract Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final RestrictedPreference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x50cfcdb5

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$1;

    const/16 v1, 0x48

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->RestrictedPreference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$2;-><init>(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final RestrictedPreference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/widget/preference/PreferenceModel;",
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

    const v0, -0x86e1c67

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7c004d7a

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    const/4 v2, 0x2

    invoke-static {p0, v1, p3, v0, v2}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$3;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$3;-><init>(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, p1, p3}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderKt;->rememberRestrictedMode(Lkotlin/jvm/functions/Function2;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    const v2, 0x7c004e46

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_3

    :cond_2
    new-instance v3, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;

    invoke-direct {v3, p0, v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;-><init>(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;)V

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$4;

    invoke-direct {v0, v3}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$4;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;)V

    const v1, 0x439fe74d

    invoke-static {v1, v0, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v3, v0, p3, v1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->RestrictionWrapper(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$5;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$RestrictedPreference$5;-><init>(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final restrictEnabled(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 1

    const-string v0, "enabled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$restrictEnabled$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt$restrictEnabled$1;

    :goto_0
    return-object p1
.end method

.method public static final restrictOnClick(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
