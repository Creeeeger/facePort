.class public abstract Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final MoreOptionsAction(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "content"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x57c51929

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v1, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v2, v2, 0xb

    if-ne v2, v3, :cond_3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v20, v13

    goto/16 :goto_3

    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$expanded$2;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$expanded$2;

    const/4 v7, 0x6

    const/4 v3, 0x0

    const/16 v6, 0xc08

    move-object v5, v13

    invoke-static/range {v2 .. v7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    const v3, -0x335f2657    # -8.433185E7f

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$1$1;

    invoke-direct {v4, v2}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4, v13, v8}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt;->MoreOptionsActionButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    const v3, -0x335f262f    # -8.433217E7f

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    if-ne v4, v5, :cond_7

    :cond_6
    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$onDismiss$1$1;

    invoke-direct {v4, v2}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$onDismiss$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$2;

    invoke-direct {v4, v0, v3}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$2;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    const v5, 0x76de7b64

    invoke-static {v5, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v13

    move/from16 v13, v16

    const/16 v18, 0x30

    const/16 v19, 0x7fc

    move-object/from16 v16, v20

    invoke-static/range {v2 .. v19}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$3;

    invoke-direct {v3, v0, v1}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$3;-><init>(Lkotlin/jvm/functions/Function3;I)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final MoreOptionsActionButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7badb7c8

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$MoreOptionsKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v1, 0x30000

    and-int/lit8 v0, v0, 0xe

    or-int v7, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x1e

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsActionButton$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsActionButton$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
