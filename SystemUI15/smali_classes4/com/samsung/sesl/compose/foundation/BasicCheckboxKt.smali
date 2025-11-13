.class public abstract Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SeslBasicCheckbox-aA_HZ9I(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;ZLkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/Indication;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v9, p9

    move/from16 v10, p10

    const/16 v0, 0x80

    const/16 v1, 0x10

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x4

    move-object/from16 v7, p8

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v8, 0x45a7dcc3

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v8, 0x1

    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_0

    or-int/lit8 v11, v9, 0x6

    move-object/from16 v15, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v9, 0xe

    move-object/from16 v15, p0

    if-nez v11, :cond_2

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v6

    goto :goto_0

    :cond_1
    move v11, v5

    :goto_0
    or-int/2addr v11, v9

    goto :goto_1

    :cond_2
    move v11, v9

    :goto_1
    and-int/2addr v5, v10

    if-eqz v5, :cond_3

    or-int/lit8 v11, v11, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v9, 0x70

    if-nez v5, :cond_5

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    or-int/2addr v11, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v10, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v11, v11, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v9, 0x380

    if-nez v5, :cond_8

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    move v5, v0

    :goto_4
    or-int/2addr v11, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v10, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v11, v11, 0xc00

    :cond_9
    move/from16 v5, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v5, v9, 0x1c00

    if-nez v5, :cond_9

    move/from16 v5, p3

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v11, v12

    :goto_7
    and-int/2addr v1, v10

    const v12, 0xe000

    if-eqz v1, :cond_d

    or-int/lit16 v11, v11, 0x6000

    :cond_c
    move-object/from16 v1, p4

    goto :goto_9

    :cond_d
    and-int v1, v9, v12

    if-nez v1, :cond_c

    move-object/from16 v1, p4

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_8

    :cond_e
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v11, v13

    :goto_9
    and-int/lit8 v13, v10, 0x20

    const/high16 v14, 0x70000

    if-eqz v13, :cond_f

    const/high16 v16, 0x30000

    or-int v11, v11, v16

    move-object/from16 v8, p5

    goto :goto_b

    :cond_f
    and-int v16, v9, v14

    move-object/from16 v8, p5

    if-nez v16, :cond_11

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v11, v11, v16

    :cond_11
    :goto_b
    and-int/lit8 v16, v10, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v18, 0x180000

    or-int v11, v11, v18

    move/from16 v14, p6

    goto :goto_d

    :cond_12
    and-int v18, v9, v17

    move/from16 v14, p6

    if-nez v18, :cond_14

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v11, v11, v19

    :cond_14
    :goto_d
    and-int/2addr v0, v10

    const/high16 v19, 0x1c00000

    if-eqz v0, :cond_15

    const/high16 v20, 0xc00000

    or-int v11, v11, v20

    move-object/from16 v12, p7

    goto :goto_f

    :cond_15
    and-int v20, v9, v19

    move-object/from16 v12, p7

    if-nez v20, :cond_17

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v21, 0x400000

    :goto_e
    or-int v11, v11, v21

    :cond_17
    :goto_f
    const v21, 0x16db6db

    and-int v4, v11, v21

    const v6, 0x492492

    if-ne v4, v6, :cond_19

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, v8

    move-object v8, v12

    goto/16 :goto_17

    :cond_19
    :goto_10
    if-eqz v13, :cond_1a

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v4

    :cond_1a
    if-eqz v16, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    move v4, v14

    :goto_11
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/4 v13, 0x0

    if-eqz v0, :cond_1d

    const v0, 0x5a9dfe90

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v12, :cond_1c

    invoke-static {v7}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v0

    :cond_1c
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_12

    :cond_1d
    move-object v0, v12

    :goto_12
    sget-object v12, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v2, :cond_1e

    sget-object v12, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_13

    :cond_1e
    sget-object v12, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    :goto_13
    const v14, 0x5a9e141d

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v3, :cond_23

    const v14, 0x5a9e1926

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit16 v14, v11, 0x380

    const/16 v13, 0x100

    if-ne v14, v13, :cond_1f

    const/4 v13, 0x1

    goto :goto_14

    :cond_1f
    const/4 v13, 0x0

    :goto_14
    and-int/lit8 v14, v11, 0x70

    const/16 v1, 0x20

    if-ne v14, v1, :cond_20

    const/4 v1, 0x1

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    :goto_15
    or-int/2addr v1, v13

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v1, :cond_21

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v1, :cond_22

    :cond_21
    new-instance v13, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$2$1;

    invoke-direct {v13, v3, v2}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_16

    :cond_23
    move v1, v13

    const/4 v6, 0x0

    move-object v13, v6

    :goto_16
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v1, v11, 0xe

    shr-int/lit8 v6, v11, 0x3

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v1, v6

    shl-int/lit8 v6, v11, 0x3

    const v14, 0xe000

    and-int/2addr v6, v14

    or-int/2addr v1, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v11

    or-int/2addr v1, v6

    and-int v6, v11, v17

    or-int/2addr v1, v6

    and-int v6, v11, v19

    or-int v20, v1, v6

    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v14, p4

    move/from16 v15, p3

    move-object/from16 v16, v8

    move/from16 v17, v4

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    invoke-static/range {v11 .. v21}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt;->SeslBasicCheckboxImpl-GHTll3U(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/Indication;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move v14, v4

    move-object v6, v8

    move-object v8, v0

    :goto_17
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_24

    new-instance v12, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move v7, v14

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;-><init>(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;ZLkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/Indication;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method

.method public static final SeslBasicCheckboxImpl-GHTll3U(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/Indication;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p9

    move/from16 v13, p10

    const/16 v0, 0x80

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v14, p8

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x64cacb7

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v15, 0x1

    and-int/lit8 v6, v13, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v12, 0xe

    if-nez v6, :cond_2

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    or-int/2addr v6, v12

    goto :goto_1

    :cond_2
    move v6, v12

    :goto_1
    and-int/2addr v4, v13

    if-eqz v4, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_5

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    or-int/2addr v6, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v12, 0x380

    if-nez v4, :cond_8

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    move v4, v0

    :goto_4
    or-int/2addr v6, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, v13, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v6, v6, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v12, 0x1c00

    move-object/from16 v8, p3

    if-nez v4, :cond_b

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v6, v4

    :cond_b
    :goto_7
    and-int/2addr v2, v13

    if-eqz v2, :cond_c

    or-int/lit16 v6, v6, 0x6000

    goto :goto_9

    :cond_c
    const v2, 0xe000

    and-int/2addr v2, v12

    if-nez v2, :cond_e

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x4000

    goto :goto_8

    :cond_d
    const/16 v2, 0x2000

    :goto_8
    or-int/2addr v6, v2

    :cond_e
    :goto_9
    and-int/lit8 v2, v13, 0x20

    if-eqz v2, :cond_10

    const/high16 v3, 0x30000

    or-int/2addr v6, v3

    :cond_f
    move-object/from16 v3, p5

    goto :goto_b

    :cond_10
    const/high16 v3, 0x70000

    and-int/2addr v3, v12

    if-nez v3, :cond_f

    move-object/from16 v3, p5

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/high16 v4, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v4, 0x10000

    :goto_a
    or-int/2addr v6, v4

    :goto_b
    and-int/lit8 v4, v13, 0x40

    if-eqz v4, :cond_13

    const/high16 v5, 0x180000

    or-int/2addr v6, v5

    :cond_12
    move/from16 v5, p6

    goto :goto_d

    :cond_13
    const/high16 v5, 0x380000

    and-int/2addr v5, v12

    if-nez v5, :cond_12

    move/from16 v5, p6

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_14

    const/high16 v7, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v7, 0x80000

    :goto_c
    or-int/2addr v6, v7

    :goto_d
    and-int/2addr v0, v13

    if-eqz v0, :cond_16

    const/high16 v7, 0xc00000

    or-int/2addr v6, v7

    :cond_15
    move-object/from16 v7, p7

    goto :goto_f

    :cond_16
    const/high16 v7, 0x1c00000

    and-int/2addr v7, v12

    if-nez v7, :cond_15

    move-object/from16 v7, p7

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v16, 0x400000

    :goto_e
    or-int v6, v6, v16

    :goto_f
    const v16, 0x16db6db

    and-int v6, v6, v16

    const v15, 0x492492

    if-ne v6, v15, :cond_19

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_10

    :cond_18
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, v3

    move-object v8, v7

    move v7, v5

    goto/16 :goto_16

    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v2

    goto :goto_11

    :cond_1a
    move-object v15, v3

    :goto_11
    if-eqz v4, :cond_1b

    const/16 v23, 0x1

    goto :goto_12

    :cond_1b
    move/from16 v23, v5

    :goto_12
    const/4 v6, 0x0

    if-eqz v0, :cond_1d

    const v0, -0x1f5f3630

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_1c

    invoke-static {v14}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v0

    :cond_1c
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_13

    :cond_1d
    move-object v0, v7

    :goto_13
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v10, :cond_1e

    sget-object v2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/semantics/Role;->Checkbox:I

    invoke-static {v2}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v7

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v0

    move-object/from16 v5, p3

    move-object/from16 p5, v0

    move v0, v6

    move/from16 v6, v23

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_14

    :cond_1e
    move-object/from16 p5, v0

    move v0, v6

    move-object v2, v15

    :goto_14
    invoke-static {v2, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-wide v3, v1, Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;->checkColor:J

    sget-object v5, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    if-ne v9, v5, :cond_1f

    const/16 v22, 0x1

    goto :goto_15

    :cond_1f
    move/from16 v22, v0

    :goto_15
    sget-object v5, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    new-instance v6, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;

    iget-wide v7, v1, Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;->circleStrokeColor:J

    move-object/from16 v16, v6

    move/from16 v17, v23

    move-wide/from16 v18, v7

    move-wide/from16 v20, v3

    invoke-direct/range {v16 .. v22}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$seslCheckboxTransition$2;-><init>(ZJJZ)V

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v14, v0}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v8, p5

    move-object v6, v15

    move/from16 v7, v23

    :goto_16
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_20

    new-instance v15, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;-><init>(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/Indication;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
