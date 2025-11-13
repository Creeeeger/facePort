.class public abstract Lcom/samsung/sesl/compose/component/CheckboxKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SeslCheckbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    move/from16 v6, p6

    const/16 v0, 0xc00

    const/16 v1, 0x10

    const/4 v2, 0x4

    move-object/from16 v3, p5

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x354ce28d    # -5869241.5f

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p7, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    move v8, v5

    move/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v6, 0xe

    if-nez v5, :cond_2

    move/from16 v5, p0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    or-int/2addr v8, v6

    goto :goto_1

    :cond_2
    move/from16 v5, p0

    move v8, v6

    :goto_1
    and-int/lit8 v9, p7, 0x2

    if-eqz v9, :cond_3

    or-int/lit8 v8, v8, 0x30

    move-object/from16 v15, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v6, 0x70

    move-object/from16 v15, p1

    if-nez v9, :cond_5

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    or-int/2addr v8, v9

    :cond_5
    :goto_3
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v6, 0x380

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v8, v10

    :goto_5
    and-int/lit8 v10, p7, 0x8

    if-eqz v10, :cond_a

    or-int/2addr v8, v0

    :cond_9
    move/from16 v11, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v11, v6, 0x1c00

    if-nez v11, :cond_9

    move/from16 v11, p3

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v8, v12

    :goto_7
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move-object/from16 v12, p4

    :goto_8
    move v14, v8

    goto :goto_a

    :cond_d
    const v12, 0xe000

    and-int/2addr v12, v6

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x4000

    goto :goto_9

    :cond_e
    const/16 v13, 0x2000

    :goto_9
    or-int/2addr v8, v13

    goto :goto_8

    :goto_a
    const v8, 0xb6db

    and-int/2addr v8, v14

    const/16 v13, 0x2492

    if-ne v8, v13, :cond_10

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v4, v11

    move-object v5, v12

    goto/16 :goto_10

    :cond_10
    :goto_b
    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_c

    :cond_11
    move-object v2, v9

    :goto_c
    if-eqz v10, :cond_12

    goto :goto_d

    :cond_12
    move v4, v11

    :goto_d
    const/4 v13, 0x0

    if-eqz v1, :cond_14

    const v1, 0x4fc5f504

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v8, :cond_13

    invoke-static {v3}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v1

    :cond_13
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_e

    :cond_14
    move-object v1, v12

    :goto_e
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->LocalOneUiOpenTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_15

    const v0, -0x5706024b

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v0, 0xfffe

    and-int/2addr v0, v14

    const/4 v14, 0x0

    move/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move v10, v4

    move-object v11, v1

    move-object v12, v3

    move v5, v13

    move v13, v0

    invoke-static/range {v7 .. v14}, Lcom/samsung/sesl/compose/component/CheckboxKt;->SeslOpenThemeCheckbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_f

    :cond_15
    move v5, v13

    const v8, -0x5702162f

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    new-instance v22, Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

    sget-object v8, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    move-result-object v8

    iget-wide v8, v8, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    invoke-static {v3}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    move-result-object v10

    iget-wide v10, v10, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->controlNormal:J

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v8, Lcom/samsung/sesl/compose/component/SeslCheckboxDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslCheckboxDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v16, Lcom/samsung/sesl/compose/component/SeslCheckboxDefaults;->checkboxSize:F

    int-to-float v7, v7

    div-float v8, v16, v7

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v12, 0x36

    const/4 v13, 0x4

    move-object v11, v3

    invoke-static/range {v7 .. v13}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ripple/PlatformRipple;

    move-result-object v11

    shl-int/lit8 v7, v14, 0x3

    and-int/lit8 v8, v7, 0x70

    or-int/2addr v0, v8

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v0, v7

    shl-int/lit8 v7, v14, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v8, v7

    or-int/2addr v0, v8

    const/high16 v8, 0x380000

    and-int/2addr v8, v7

    or-int/2addr v0, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v7, v8

    or-int/2addr v0, v7

    const/16 v17, 0x0

    move-object/from16 v7, v22

    move/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, v16

    move-object v12, v2

    move v13, v4

    move-object v14, v1

    move-object v15, v3

    move/from16 v16, v0

    invoke-static/range {v7 .. v17}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt;->SeslBasicCheckbox-aA_HZ9I(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;ZLkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/Indication;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_f
    move-object v5, v1

    move-object v9, v2

    :goto_10
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v10, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslCheckbox$2;

    move-object v0, v10

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslCheckbox$2;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v10, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final SeslOpenThemeCheckbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v3, 0x2

    move-object/from16 v4, p5

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x7b616926

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v7, p7, 0x1

    const/4 v8, 0x4

    if-eqz v7, :cond_0

    or-int/lit8 v7, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v6, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    and-int/lit8 v3, p7, 0x2

    const/16 v9, 0x20

    if-eqz v3, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v6, 0x70

    if-nez v3, :cond_5

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    or-int/2addr v7, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v6, 0x380

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v7, v11

    :goto_5
    and-int/lit8 v11, p7, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v7, v7, 0xc00

    :cond_9
    move/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v6, 0x1c00

    if-nez v12, :cond_9

    move/from16 v12, p3

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v7, v13

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v7, v7, 0x6000

    :cond_c
    move-object/from16 v13, p4

    goto :goto_9

    :cond_d
    const v13, 0xe000

    and-int/2addr v13, v6

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v7, v14

    :goto_9
    const v14, 0xb6db

    and-int/2addr v14, v7

    const/16 v15, 0x2492

    if-ne v14, v15, :cond_10

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v10

    move-object v5, v13

    goto/16 :goto_14

    :cond_10
    :goto_a
    if-eqz v3, :cond_11

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v3, v10

    :goto_b
    if-eqz v11, :cond_12

    move/from16 v19, v5

    goto :goto_c

    :cond_12
    move/from16 v19, v12

    :goto_c
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/4 v11, 0x0

    if-eqz v0, :cond_14

    const v0, 0x51427eaf

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v12, :cond_13

    invoke-static {v4}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v0

    :cond_13
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_14
    move-object v0, v13

    :goto_d
    sget-object v12, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v12, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const v13, 0x51428cb3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v10, :cond_15

    const v13, 0x7f0810fa

    invoke-static {v13, v12}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    move-object v15, v13

    check-cast v15, Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, 0x51429dd3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_16

    const v13, 0x7f0810f7

    invoke-static {v13, v12}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, 0x5142aef3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_17

    const v13, 0x7f0810fb

    invoke-static {v13, v12}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v13, Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0x5142c033

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_18

    const v5, 0x7f0810f8

    invoke-static {v5, v12}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v5, Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v19, :cond_1d

    const v5, -0x28e885e2

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v12, Landroidx/compose/foundation/IndicationKt;->LocalIndication:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, Landroidx/compose/foundation/Indication;

    const v12, 0x5142e351

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit8 v12, v7, 0x70

    if-ne v12, v9, :cond_19

    const/4 v9, 0x1

    goto :goto_e

    :cond_19
    move v9, v11

    :goto_e
    and-int/lit8 v7, v7, 0xe

    if-ne v7, v8, :cond_1a

    const/4 v8, 0x1

    goto :goto_f

    :cond_1a
    move v8, v11

    :goto_f
    or-int/2addr v8, v9

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1b

    if-ne v9, v10, :cond_1c

    :cond_1b
    new-instance v9, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$2$1;

    invoke-direct {v9, v2, v1}, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1c
    move-object/from16 v17, v9

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v18, 0x18

    move-object v12, v3

    move-object v13, v0

    move-object v10, v14

    move-object/from16 v14, v16

    move-object v11, v15

    move v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    new-instance v9, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;

    invoke-direct {v9, v11, v10}, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$3;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)V

    const v10, 0x7b31d10c

    invoke-static {v10, v4, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    or-int/lit16 v13, v7, 0x6c00

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v14, 0x4

    move-object v7, v5

    const/4 v15, 0x0

    move-object v12, v4

    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_13

    :cond_1d
    move v15, v11

    const v7, -0x28dd243f

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v1, :cond_1e

    move-object v7, v13

    goto :goto_10

    :cond_1e
    move-object v7, v5

    :goto_10
    if-eqz v1, :cond_1f

    const-string v5, "checked"

    :goto_11
    move-object v8, v5

    goto :goto_12

    :cond_1f
    const-string v5, "unchecked"

    goto :goto_11

    :goto_12
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x8

    const/16 v16, 0x7c

    move-object v14, v4

    move v15, v5

    invoke-static/range {v7 .. v16}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_13
    move-object v5, v0

    move/from16 v12, v19

    :goto_14
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_20

    new-instance v9, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$4;

    move-object v0, v9

    move/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v12

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sesl/compose/component/CheckboxKt$SeslOpenThemeCheckbox$4;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method
