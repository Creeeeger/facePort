.class public abstract Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final MoCheckbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v3, p5

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x607cc843

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p7, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    move v7, v5

    move v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v6, 0xe

    if-nez v5, :cond_2

    move v5, p0

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move v5, p0

    move v7, v6

    :goto_1
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v7, v7, 0x30

    move-object/from16 v13, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v6, 0x70

    move-object/from16 v13, p1

    if-nez v1, :cond_5

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    or-int/2addr v7, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v2, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v2, v6, 0x380

    if-nez v2, :cond_6

    move-object/from16 v2, p2

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v7, v8

    :goto_5
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v7, v7, 0xc00

    :cond_9
    move/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v6, 0x1c00

    if-nez v9, :cond_9

    move/from16 v9, p3

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v7, v10

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v7, v7, 0x6000

    :cond_c
    move-object/from16 v10, p4

    goto :goto_9

    :cond_d
    const v10, 0xe000

    and-int/2addr v10, v6

    if-nez v10, :cond_c

    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x4000

    goto :goto_8

    :cond_e
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v7, v11

    :goto_9
    const v11, 0xb6db

    and-int/2addr v7, v11

    const/16 v11, 0x2492

    if-ne v7, v11, :cond_10

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v2

    goto/16 :goto_e

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v1, v2

    :goto_b
    if-eqz v8, :cond_12

    goto :goto_c

    :cond_12
    move v4, v9

    :goto_c
    if-eqz v0, :cond_14

    const v0, -0x156e970f

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_13

    invoke-static {v3}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v0

    :cond_13
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_14
    move-object v0, v10

    :goto_d
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v2

    const-wide v7, 0xfffcfcffL

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v9

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v7

    invoke-static {v2, v9, v10, v7, v8}, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->copy-FD3wquc$default(Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;JJ)Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v2

    new-instance v14, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoCheckbox$2;

    move-object v7, v14

    move v8, p0

    move-object/from16 v9, p1

    move-object v10, v1

    move v11, v4

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoCheckbox$2;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    const v7, 0x53a373ee

    invoke-static {v7, v3, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/16 v11, 0x180

    move-object v8, v2

    move-object v10, v3

    invoke-static/range {v7 .. v12}, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->SeslTheme(ZLcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v10, v0

    move v9, v4

    move-object v4, v1

    :goto_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoCheckbox$3;

    move-object v0, v11

    move v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move v4, v9

    move-object v5, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoCheckbox$3;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v11, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final MoSlider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;FLjava/lang/String;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p11

    move/from16 v15, p12

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x80

    const/16 v5, 0x20

    move-object/from16 v11, p10

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x10187480

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v7, v15, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v14, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    or-int/2addr v7, v14

    goto :goto_1

    :cond_2
    move v7, v14

    :goto_1
    and-int/2addr v2, v15

    if-eqz v2, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v14, 0x70

    if-nez v2, :cond_5

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    or-int/2addr v7, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v15, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    move v8, v4

    :goto_4
    or-int/2addr v7, v8

    :goto_5
    and-int/lit8 v8, v15, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v7, v7, 0xc00

    :cond_9
    move/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v14, 0x1c00

    if-nez v9, :cond_9

    move/from16 v9, p3

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v7, v10

    :goto_7
    and-int/2addr v1, v15

    const v16, 0xe000

    if-eqz v1, :cond_c

    or-int/lit16 v7, v7, 0x6000

    move-object/from16 v10, p4

    goto :goto_9

    :cond_c
    and-int v17, v14, v16

    move-object/from16 v10, p4

    if-nez v17, :cond_e

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v7, v7, v17

    :cond_e
    :goto_9
    const/high16 v17, 0x70000

    and-int v17, v14, v17

    if-nez v17, :cond_10

    and-int/lit8 v17, v15, 0x20

    move-object/from16 v5, p5

    if-nez v17, :cond_f

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v18, 0x10000

    :goto_a
    or-int v7, v7, v18

    goto :goto_b

    :cond_10
    move-object/from16 v5, p5

    :goto_b
    and-int/lit8 v18, v15, 0x40

    const/high16 v20, 0x380000

    if-eqz v18, :cond_11

    const/high16 v21, 0x180000

    or-int v7, v7, v21

    move-object/from16 v6, p6

    goto :goto_d

    :cond_11
    and-int v21, v14, v20

    move-object/from16 v6, p6

    if-nez v21, :cond_13

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v22, 0x80000

    :goto_c
    or-int v7, v7, v22

    :cond_13
    :goto_d
    const/high16 v22, 0x1c00000

    and-int v22, v14, v22

    if-nez v22, :cond_16

    and-int/lit16 v0, v15, 0x80

    if-nez v0, :cond_14

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p7

    :cond_15
    const/high16 v23, 0x400000

    :goto_e
    or-int v7, v7, v23

    :goto_f
    const/16 v4, 0x100

    goto :goto_10

    :cond_16
    move-object/from16 v0, p7

    goto :goto_f

    :goto_10
    and-int/2addr v4, v15

    if-eqz v4, :cond_17

    const/high16 v23, 0x6000000

    or-int v7, v7, v23

    move/from16 v0, p8

    goto :goto_12

    :cond_17
    const/high16 v23, 0xe000000

    and-int v23, v14, v23

    move/from16 v0, p8

    if-nez v23, :cond_19

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_18

    const/high16 v23, 0x4000000

    goto :goto_11

    :cond_18
    const/high16 v23, 0x2000000

    :goto_11
    or-int v7, v7, v23

    :cond_19
    :goto_12
    and-int/lit16 v0, v15, 0x200

    if-eqz v0, :cond_1a

    const/high16 v23, 0x30000000

    or-int v7, v7, v23

    move-object/from16 v3, p9

    goto :goto_14

    :cond_1a
    const/high16 v23, 0x70000000

    and-int v23, v14, v23

    move-object/from16 v3, p9

    if-nez v23, :cond_1c

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    const/high16 v23, 0x20000000

    goto :goto_13

    :cond_1b
    const/high16 v23, 0x10000000

    :goto_13
    or-int v7, v7, v23

    :cond_1c
    :goto_14
    const v23, 0x5b6db6db

    and-int v3, v7, v23

    const v5, 0x12492492

    if-ne v3, v5, :cond_1e

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move-object v7, v6

    move v4, v9

    move-object v5, v10

    move-object v12, v11

    move-object/from16 v6, p5

    move/from16 v9, p8

    move-object/from16 v10, p9

    goto/16 :goto_25

    :cond_1e
    :goto_15
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v3, 0x1

    and-int/lit8 v5, v14, 0x1

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const v24, -0x1c00001

    const v25, -0x70001

    if-eqz v5, :cond_22

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x20

    and-int/2addr v0, v15

    if-eqz v0, :cond_20

    and-int v7, v7, v25

    :cond_20
    const/16 v0, 0x80

    and-int/2addr v0, v15

    if-eqz v0, :cond_21

    and-int v7, v7, v24

    :cond_21
    move-object/from16 v28, p2

    move/from16 v30, p8

    move-object/from16 v31, p9

    move-object v8, v6

    move/from16 v18, v7

    move/from16 v29, v9

    move-object/from16 v9, p5

    move-object/from16 v6, p7

    goto/16 :goto_1f

    :cond_22
    :goto_16
    if-eqz v2, :cond_23

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_17

    :cond_23
    move-object/from16 v2, p2

    :goto_17
    if-eqz v8, :cond_24

    const/4 v9, 0x1

    :cond_24
    if-eqz v1, :cond_25

    const/16 v1, 0x20

    const/4 v10, 0x0

    goto :goto_18

    :cond_25
    const/16 v1, 0x20

    :goto_18
    and-int/2addr v1, v15

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->colors-q0g_0yA(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/SliderColors;

    move-result-object v1

    and-int v7, v7, v25

    goto :goto_19

    :cond_26
    move-object/from16 v1, p5

    :goto_19
    if-eqz v18, :cond_28

    const v5, -0x37814cd0    # -260812.75f

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v6, :cond_27

    invoke-static {v11}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v5

    :cond_27
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1a
    const/16 v6, 0x80

    goto :goto_1b

    :cond_28
    move-object v5, v6

    goto :goto_1a

    :goto_1b
    and-int/2addr v6, v15

    if-eqz v6, :cond_29

    new-instance v6, Lkotlin/ranges/ClosedFloatRange;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v6, v3, v8}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    and-int v3, v7, v24

    move v7, v3

    goto :goto_1c

    :cond_29
    move-object/from16 v6, p7

    :goto_1c
    if-eqz v4, :cond_2a

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_1d

    :cond_2a
    move/from16 v3, p8

    :goto_1d
    if-eqz v0, :cond_2b

    const-string v0, ""

    move-object/from16 v31, v0

    :goto_1e
    move-object/from16 v28, v2

    move/from16 v30, v3

    move-object v8, v5

    move/from16 v18, v7

    move/from16 v29, v9

    move-object v9, v1

    goto :goto_1f

    :cond_2b
    move-object/from16 v31, p9

    goto :goto_1e

    :goto_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSecHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;

    const v1, -0x37814be3

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_2c

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/runtime/MutableState;

    const v1, -0x37814b9e

    const/4 v3, 0x0

    invoke-static {v11, v3, v1}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_2d

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    move-object v7, v1

    check-cast v7, Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v23, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v6, Lkotlin/ranges/ClosedFloatRange;

    invoke-virtual {v6, v1}, Lkotlin/ranges/ClosedFloatRange;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_2e

    cmpl-float v1, v12, v30

    if-lez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_20

    :cond_2e
    const/4 v1, 0x0

    :goto_20
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x51c9f02a

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v1, :cond_2f

    const v1, 0x7f0607e3

    invoke-static {v1, v11}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/Composer;)J

    move-result-wide v3

    :goto_21
    const/4 v1, 0x0

    goto :goto_22

    :cond_2f
    iget-wide v3, v9, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    goto :goto_21

    :goto_22
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/high16 v1, 0x43c80000    # 400.0f

    const/4 v5, 0x5

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v1, v14, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v1

    const/16 v5, 0x8

    const-string v12, "animateColorAsState"

    const/16 v14, 0x1b0

    move-wide/from16 p2, v3

    move-object/from16 p4, v1

    move-object/from16 p5, v12

    move-object/from16 p6, v11

    move/from16 p7, v14

    move/from16 p8, v5

    invoke-static/range {p2 .. p8}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    const v1, -0x37814a45

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int v1, v18, v20

    const/high16 v3, 0x100000

    if-ne v1, v3, :cond_30

    const/4 v1, 0x1

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    :goto_23
    and-int v3, v18, v16

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_31

    const/16 v19, 0x1

    goto :goto_24

    :cond_31
    const/16 v19, 0x0

    :goto_24
    or-int v1, v1, v19

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_32

    if-ne v3, v2, :cond_33

    :cond_32
    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;

    const/4 v1, 0x0

    invoke-direct {v3, v8, v7, v10, v1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v11, v8, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v14, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$3;

    invoke-direct {v14, v13, v6, v0}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;)V

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;

    move-object v0, v5

    move/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v31

    move/from16 v4, v29

    move-object v13, v5

    move-object v5, v10

    move-object/from16 v26, v6

    move-object v6, v9

    move-object/from16 v19, v7

    move-object v7, v8

    move-object/from16 v27, v8

    move-object/from16 v8, v26

    move-object/from16 v32, v9

    move-object v9, v12

    move-object v12, v10

    move-object/from16 v10, v22

    move-object/from16 p2, v12

    move-object v12, v11

    move-object/from16 v11, v19

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;-><init>(FLandroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x5320dbd3

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v1, v18, 0x3

    and-int/lit8 v1, v1, 0x70

    const v2, 0x1b0186

    or-int v24, v1, v2

    const/16 v25, 0x10

    const/16 v21, 0x0

    move-object/from16 v16, v23

    move-object/from16 v17, v22

    move-object/from16 v18, v28

    move-object/from16 v20, v14

    move-object/from16 v22, v0

    move-object/from16 v23, v12

    invoke-virtual/range {v16 .. v25}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->SliderContainer(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v5, p2

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v9, v30

    move-object/from16 v10, v31

    move-object/from16 v6, v32

    :goto_25
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_34

    new-instance v14, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;FLjava/lang/String;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_34
    return-void
.end method
