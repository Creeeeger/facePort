.class public final Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final icon:Lkotlin/jvm/functions/Function2;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->title:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getSummary()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->summary:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getIcon()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->icon:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getEnabled()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->restrictEnabled(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lcom/android/settingslib/spa/widget/preference/PreferenceModel;->getOnClick()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->restrictOnClick(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final RestrictionWrapper(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x3e087678

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x775b31be

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    instance-of v1, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel$RestrictionWrapper$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel$RestrictionWrapper$1;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    new-instance v6, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v6, v2}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    new-instance v7, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel$RestrictionWrapper$2;

    invoke-direct {v7, p0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel$RestrictionWrapper$2;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x3

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v3, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, p2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_c

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_8

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_9

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    invoke-static {v3, p2, v3, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v0, 0xe

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel$RestrictionWrapper$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel$RestrictionWrapper$4;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getEnabled()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->enabled:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->icon:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceModel;->title:Ljava/lang/String;

    return-object p0
.end method
