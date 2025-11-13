.class public final Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# static fields
.field public static final Companion:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;


# instance fields
.field public final changeable:Lkotlin/jvm/functions/Function0;

.field public final checked:Lkotlin/jvm/functions/Function0;

.field public final icon:Lkotlin/jvm/functions/Function2;

.field public final onCheckedChange:Lkotlin/jvm/functions/Function1;

.field public final restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->Companion:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$summary$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$summary$1;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;)V

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getSummary()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChecked()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$Companion;->getSummary(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->summary:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getIcon()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->icon:Lkotlin/jvm/functions/Function2;

    if-nez p3, :cond_0

    sget-object p1, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$checked$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$checked$1;

    goto :goto_0

    :cond_0
    instance-of p1, p3, Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChecked()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p1, p3, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$checked$2;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$checked$2;

    goto :goto_0

    :cond_2
    instance-of p1, p3, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChecked()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of p1, p3, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    if-eqz p1, :cond_4

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChecked()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->checked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChangeable()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->restrictEnabled(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->changeable:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getOnCheckedChange()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedPreferenceKt;->restrictOnClick(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final access$ToggleableState(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;Ljava/lang/Boolean;)Landroidx/compose/ui/state/ToggleableState;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Indeterminate:Landroidx/compose/ui/state/ToggleableState;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final RestrictionWrapper(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "content"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x657daf93

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v2, 0xe

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v6, v2, 0x70

    if-nez v6, :cond_3

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :cond_3
    and-int/lit8 v6, v4, 0x5b

    const/16 v7, 0x12

    if-ne v6, v7, :cond_5

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_5
    :goto_3
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v6, v0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->restrictedMode:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;

    instance-of v7, v6, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v15, 0x0

    const/4 v14, 0x1

    iget-object v13, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_a

    const v6, 0x63b7c6fa

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v6, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v6, v5}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    new-instance v5, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$1;

    invoke-direct {v5, v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$1;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x3

    move-object v9, v13

    move-object v13, v6

    move v6, v14

    move-object v14, v5

    move v5, v15

    move v15, v7

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    new-instance v10, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$2;

    invoke-direct {v10, v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$2;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;)V

    invoke-static {v7, v5, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v10, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v3, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_9

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_6

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v9, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_7

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    invoke-static {v10, v3, v10, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v4, v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_6

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    move-object v9, v13

    move v7, v15

    move v15, v14

    instance-of v6, v6, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    if-eqz v6, :cond_f

    const v6, 0x63b7c8d6

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v13, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v13, v5}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    new-instance v14, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$4;

    invoke-direct {v14, v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$4;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x3

    move v6, v15

    move v15, v5

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v10, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$5;

    invoke-direct {v10, v0}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$5;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;)V

    invoke-static {v5, v7, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v10, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v3, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_e

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_b

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v9, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_c

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    :cond_c
    invoke-static {v10, v3, v10, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_d
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v4, v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_f
    const v5, 0x63b7caa3

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v4, v4, 0xe

    invoke-static {v4, v1, v3, v7}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_10

    new-instance v4, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$7;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel$RestrictionWrapper$7;-><init>(Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;Lkotlin/jvm/functions/Function2;I)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public final getChangeable()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->changeable:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getChecked()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->checked:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getIcon()Lkotlin/jvm/functions/Function2;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->icon:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnCheckedChange()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->onCheckedChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedSwitchPreferenceModel;->title:Ljava/lang/String;

    return-object p0
.end method
