.class public abstract Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final BaseIcon-TDGSqEk(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "modifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x410acab7

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x2db

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_7
    :goto_4
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    const v2, 0x1944912b

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconContainerSize:F

    invoke-static {p1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v4, p3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p3, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, p3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_b

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_8

    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_8
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, p3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_9

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    invoke-static {v4, p3, v4, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0

    :cond_c
    const v0, 0x194491ee

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_d

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseIcon$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseIcon$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;FI)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final BaseLayout-IBxwOmc(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/16 v6, 0x30

    const/4 v7, 0x2

    const/4 v8, 0x4

    const-string v9, "title"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "subTitle"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p10

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v10, -0x77771b90

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v10, 0x1

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_0

    or-int/lit8 v13, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v13, v11, 0xe

    if-nez v13, :cond_2

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v13, v8

    goto :goto_0

    :cond_1
    move v13, v7

    :goto_0
    or-int/2addr v13, v11

    goto :goto_1

    :cond_2
    move v13, v11

    :goto_1
    and-int/2addr v7, v12

    if-eqz v7, :cond_3

    or-int/2addr v13, v6

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v11, 0x70

    if-nez v7, :cond_5

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    or-int/2addr v13, v7

    :cond_5
    :goto_3
    and-int/lit8 v7, v12, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v13, v13, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v11, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    move v14, v0

    :goto_4
    or-int/2addr v13, v14

    :goto_5
    and-int/lit8 v14, v12, 0x8

    if-eqz v14, :cond_a

    or-int/lit16 v13, v13, 0xc00

    :cond_9
    move-object/from16 v15, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v15, v11, 0x1c00

    if-nez v15, :cond_9

    move-object/from16 v15, p3

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v13, v13, v16

    :goto_7
    and-int/2addr v4, v12

    if-eqz v4, :cond_c

    or-int/lit16 v13, v13, 0x6000

    move-object/from16 v6, p4

    goto :goto_9

    :cond_c
    const v16, 0xe000

    and-int v16, v11, v16

    move-object/from16 v6, p4

    if-nez v16, :cond_e

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v13, v13, v17

    :cond_e
    :goto_9
    and-int/2addr v5, v12

    if-eqz v5, :cond_f

    const/high16 v17, 0x30000

    or-int v13, v13, v17

    move-object/from16 v10, p5

    goto :goto_b

    :cond_f
    const/high16 v17, 0x70000

    and-int v17, v11, v17

    move-object/from16 v10, p5

    if-nez v17, :cond_11

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v13, v13, v17

    :cond_11
    :goto_b
    and-int/lit8 v17, v12, 0x40

    if-eqz v17, :cond_12

    const/high16 v18, 0x180000

    or-int v13, v13, v18

    move/from16 v3, p6

    goto :goto_d

    :cond_12
    const/high16 v18, 0x380000

    and-int v18, v11, v18

    move/from16 v3, p6

    if-nez v18, :cond_14

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v13, v13, v19

    :cond_14
    :goto_d
    and-int/2addr v0, v12

    if-eqz v0, :cond_16

    const/high16 v19, 0xc00000

    :goto_e
    or-int v13, v13, v19

    :cond_15
    const/16 v1, 0x100

    goto :goto_f

    :cond_16
    const/high16 v19, 0x1c00000

    and-int v19, v11, v19

    move/from16 v1, p7

    if-nez v19, :cond_15

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v19, 0x400000

    goto :goto_e

    :goto_f
    and-int/2addr v1, v12

    if-eqz v1, :cond_18

    const/high16 v18, 0x6000000

    or-int v13, v13, v18

    move/from16 v2, p8

    goto :goto_11

    :cond_18
    const/high16 v18, 0xe000000

    and-int v18, v11, v18

    move/from16 v2, p8

    if-nez v18, :cond_1a

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v13, v13, v18

    :cond_1a
    :goto_11
    and-int/lit16 v2, v12, 0x200

    if-eqz v2, :cond_1b

    const/high16 v18, 0x30000000

    or-int v13, v13, v18

    move-object/from16 v3, p9

    goto :goto_13

    :cond_1b
    const/high16 v18, 0x70000000

    and-int v18, v11, v18

    move-object/from16 v3, p9

    if-nez v18, :cond_1d

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v18, 0x10000000

    :goto_12
    or-int v13, v13, v18

    :cond_1d
    :goto_13
    const v18, 0x5b6db6db

    and-int v3, v13, v18

    const v6, 0x12492492

    if-ne v3, v6, :cond_1f

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_14

    :cond_1e
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v11, p9

    move-object v3, v8

    move-object v6, v10

    move-object v4, v15

    move/from16 v8, p7

    move/from16 v10, p8

    goto/16 :goto_1d

    :cond_1f
    :goto_14
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v7, :cond_20

    move-object v8, v3

    :cond_20
    if-eqz v14, :cond_21

    const/4 v15, 0x0

    :cond_21
    if-eqz v4, :cond_22

    const/4 v4, 0x0

    goto :goto_15

    :cond_22
    move-object/from16 v4, p4

    :goto_15
    if-eqz v5, :cond_23

    sget-object v5, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$1;

    goto :goto_16

    :cond_23
    move-object v5, v10

    :goto_16
    if-eqz v17, :cond_24

    sget v7, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    goto :goto_17

    :cond_24
    move/from16 v7, p6

    :goto_17
    if-eqz v0, :cond_25

    sget v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    goto :goto_18

    :cond_25
    move/from16 v0, p7

    :goto_18
    if-eqz v1, :cond_26

    sget v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingVertical:F

    goto :goto_19

    :cond_26
    move/from16 v1, p8

    :goto_19
    if-eqz v2, :cond_27

    sget-object v2, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BaseLayoutKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_1a

    :cond_27
    move-object/from16 v2, p9

    :goto_1a
    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v8, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v14, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;

    const/4 v6, 0x1

    invoke-static {v10, v6, v14}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xb

    move-object/from16 p2, v10

    move/from16 p3, v18

    move/from16 p4, v6

    move/from16 p5, v0

    move/from16 p6, v14

    move/from16 p7, v19

    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    move/from16 v18, v0

    const/16 v0, 0x30

    invoke-static {v14, v10, v9, v0}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget v10, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v8

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v11, v9, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_2e

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_28

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    :cond_28
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1b
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v14, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v8, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_29

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    :cond_29
    invoke-static {v10, v9, v10, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2a
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2b

    move v0, v6

    goto :goto_1c

    :cond_2b
    const v0, 0x3ec28f5c    # 0.38f

    :goto_1c
    invoke-static {v3, v0}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    shr-int/lit8 v3, v13, 0xc

    and-int/lit16 v3, v3, 0x38e

    invoke-static {v4, v0, v7, v9, v3}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;->BaseIcon-TDGSqEk(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/Composer;I)V

    float-to-double v10, v6

    const-wide/16 v19, 0x0

    cmpl-double v3, v10, v19

    if-lez v3, :cond_2d

    new-instance v3, Landroidx/compose/foundation/layout/LayoutWeightElement;

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v6, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v6

    const/4 v8, 0x1

    invoke-direct {v3, v6, v8}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v8}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v3, v13, 0xe

    shr-int/lit8 v6, v13, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v3, v6

    shl-int/lit8 v6, v13, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v3, v6

    move-object/from16 p2, p0

    move-object/from16 p3, v15

    move-object/from16 p4, p1

    move-object/from16 p5, v0

    move-object/from16 p6, v9

    move/from16 p7, v3

    invoke-static/range {p2 .. p7}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;->Titles(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    shr-int/lit8 v0, v13, 0x1b

    and-int/lit8 v0, v0, 0xe

    const/4 v3, 0x1

    invoke-static {v0, v2, v9, v3}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    move v10, v1

    move-object v11, v2

    move-object v6, v5

    move-object/from16 v3, v16

    move/from16 v8, v18

    move-object v5, v4

    move-object v4, v15

    :goto_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2c

    new-instance v14, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v9, v10

    move-object v10, v11

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid weight 1.0; must be greater than zero"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final Titles(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x3ba49f84

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p5, 0x1c00

    if-nez v1, :cond_7

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    move v6, v0

    and-int/lit16 v0, v6, 0x16db

    const/16 v1, 0x492

    if-ne v0, v1, :cond_9

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_7

    :cond_9
    :goto_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget v1, p4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {p4, p3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, p4, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_e

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, p4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_a

    invoke-virtual {p4, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p4, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p4, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v2, p4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_b

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-static {v1, p4, v1, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_c
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p4, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v4, v6, 0x7e

    const/4 v5, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsTitle(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V

    shr-int/lit8 v0, v6, 0x6

    and-int/lit8 v0, v0, 0xe

    const/4 v1, 0x1

    invoke-static {v0, p2, p4, v1}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    :goto_7
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_d

    new-instance v6, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;I)V

    iput-object v6, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method
