.class public abstract Lcom/android/compose/grid/GridsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final Grid-nSlTg7c(IZLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p5

    move/from16 v9, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v10, p6

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x7cdb055

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v11, 0x1

    and-int/lit8 v4, p8, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0xe

    if-nez v4, :cond_2

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move v4, v9

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v9, 0x70

    if-nez v2, :cond_5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    or-int/2addr v4, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v9, 0x380

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v4, v5

    :goto_5
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v4, v4, 0xc00

    move/from16 v12, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v9, 0x1c00

    move/from16 v12, p3

    if-nez v5, :cond_b

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v4, v5

    :cond_b
    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v4, v4, 0x6000

    move/from16 v13, p4

    goto :goto_9

    :cond_c
    const v0, 0xe000

    and-int/2addr v0, v9

    move/from16 v13, p4

    if-nez v0, :cond_e

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    goto :goto_8

    :cond_d
    const/16 v0, 0x2000

    :goto_8
    or-int/2addr v4, v0

    :cond_e
    :goto_9
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_10

    const/high16 v0, 0x30000

    :goto_a
    or-int/2addr v4, v0

    :cond_f
    move v14, v4

    goto :goto_b

    :cond_10
    const/high16 v0, 0x70000

    and-int/2addr v0, v9

    if-nez v0, :cond_f

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v0, 0x10000

    goto :goto_a

    :goto_b
    const v0, 0x5b6db

    and-int/2addr v0, v14

    const v1, 0x12492

    if-ne v0, v1, :cond_13

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_f

    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v0

    goto :goto_d

    :cond_14
    move-object v15, v3

    :goto_d
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-lez v6, :cond_1b

    const v0, 0xaa2e7c9

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_15

    new-instance v0, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;

    invoke-direct {v0}, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;-><init>()V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    move-object v3, v0

    check-cast v3, Lcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v5, Lcom/android/compose/grid/GridsKt$Grid$2;

    move-object v0, v5

    move/from16 v1, p1

    move/from16 v2, p0

    move/from16 v4, p4

    move-object v11, v5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/grid/GridsKt$Grid$2;-><init>(ZILcom/android/compose/grid/GridsKt$Grid$sizeCache$1$1;FF)V

    shr-int/lit8 v0, v14, 0xf

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v1, v14, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iget v1, v10, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v10, v15}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    iget-object v5, v10, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_1a

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_16

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_16
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_e
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_17

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    invoke-static {v1, v10, v1, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_18
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0xe

    const/4 v1, 0x1

    invoke-static {v0, v8, v10, v1}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    move-object v3, v15

    :goto_f
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    new-instance v11, Lcom/android/compose/grid/GridsKt$Grid$3;

    move-object v0, v11

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/compose/grid/GridsKt$Grid$3;-><init>(IZLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_1b
    if-eqz v7, :cond_1c

    const-string v0, "columns"

    goto :goto_10

    :cond_1c
    const-string v0, "rows"

    :goto_10
    const-string v1, "Must provide a positive number of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final VerticalGrid-vz2T9sI(ILandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v3, p5

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x2ce156a5

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, p7, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v6, 0x6

    move v5, v4

    move/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v6, 0xe

    if-nez v4, :cond_2

    move/from16 v4, p0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    or-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move/from16 v4, p0

    move v5, v6

    :goto_1
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v6, 0x70

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    or-int/2addr v5, v8

    :goto_3
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v6, 0x380

    if-nez v8, :cond_6

    move/from16 v8, p2

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v5, v9

    :goto_5
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v6, 0x1c00

    if-nez v10, :cond_9

    move/from16 v10, p3

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v5, v11

    :goto_7
    and-int/lit8 v0, p7, 0x10

    const v11, 0xe000

    if-eqz v0, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move-object/from16 v0, p4

    goto :goto_9

    :cond_d
    and-int v0, v6, v11

    if-nez v0, :cond_c

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v5, v12

    :goto_9
    const v12, 0xb6db

    and-int/2addr v12, v5

    const/16 v13, 0x2492

    if-ne v12, v13, :cond_10

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v7

    goto :goto_e

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v1, v7

    :goto_b
    const/4 v7, 0x0

    if-eqz v2, :cond_12

    int-to-float v2, v7

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_c

    :cond_12
    move v2, v8

    :goto_c
    if-eqz v9, :cond_13

    int-to-float v7, v7

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move/from16 v16, v7

    goto :goto_d

    :cond_13
    move/from16 v16, v10

    :goto_d
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v7, v5, 0xe

    or-int/lit8 v7, v7, 0x30

    shl-int/lit8 v5, v5, 0x3

    and-int/lit16 v8, v5, 0x380

    or-int/2addr v7, v8

    and-int/lit16 v8, v5, 0x1c00

    or-int/2addr v7, v8

    and-int v8, v5, v11

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v5, v8

    or-int v14, v7, v5

    const/4 v15, 0x0

    const/4 v8, 0x1

    move/from16 v7, p0

    move-object v9, v1

    move v10, v2

    move/from16 v11, v16

    move-object/from16 v12, p4

    move-object v13, v3

    invoke-static/range {v7 .. v15}, Lcom/android/compose/grid/GridsKt;->Grid-nSlTg7c(IZLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move v8, v2

    move/from16 v10, v16

    move-object v2, v1

    :goto_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_14

    new-instance v11, Lcom/android/compose/grid/GridsKt$VerticalGrid$1;

    move-object v0, v11

    move/from16 v1, p0

    move v3, v8

    move v4, v10

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/compose/grid/GridsKt$VerticalGrid$1;-><init>(ILandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function2;II)V

    iput-object v11, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
