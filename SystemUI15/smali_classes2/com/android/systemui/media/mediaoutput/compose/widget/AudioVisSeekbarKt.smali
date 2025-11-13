.class public abstract Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final AudioVisSeekbar(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;ZLandroidx/compose/runtime/Composer;III)V
    .locals 44

    move-object/from16 v2, p1

    move/from16 v13, p13

    move/from16 v15, p15

    const/16 v1, 0x8

    const/16 v3, 0x80

    const/16 v4, 0x10

    const/16 v5, 0x400

    const/16 v7, 0x100

    const/16 v8, 0x20

    move-object/from16 v9, p12

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v10, 0x65c59d74

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v10, 0x1

    and-int/lit8 v11, v15, 0x1

    const/4 v12, 0x4

    const/4 v14, 0x2

    if-eqz v11, :cond_0

    or-int/lit8 v11, v13, 0x6

    move/from16 v16, v11

    move/from16 v11, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v13, 0xe

    if-nez v11, :cond_2

    move/from16 v11, p0

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_1

    move/from16 v16, v12

    goto :goto_0

    :cond_1
    move/from16 v16, v14

    :goto_0
    or-int v16, v13, v16

    goto :goto_1

    :cond_2
    move/from16 v11, p0

    move/from16 v16, v13

    :goto_1
    and-int/lit8 v17, v15, 0x2

    if-eqz v17, :cond_4

    or-int/lit8 v16, v16, 0x30

    :cond_3
    :goto_2
    move/from16 v14, v16

    goto :goto_4

    :cond_4
    and-int/lit8 v17, v13, 0x70

    if-nez v17, :cond_3

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v8

    goto :goto_3

    :cond_5
    move/from16 v17, v4

    :goto_3
    or-int v16, v16, v17

    goto :goto_2

    :goto_4
    and-int/lit8 v16, v15, 0x4

    if-eqz v16, :cond_7

    or-int/lit16 v14, v14, 0x180

    :cond_6
    move-object/from16 v12, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v12, v13, 0x380

    if-nez v12, :cond_6

    move-object/from16 v12, p2

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v7

    goto :goto_5

    :cond_8
    move/from16 v18, v3

    :goto_5
    or-int v14, v14, v18

    :goto_6
    and-int/lit8 v18, v15, 0x8

    if-eqz v18, :cond_a

    or-int/lit16 v14, v14, 0xc00

    :cond_9
    move/from16 v0, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v0, v13, 0x1c00

    if-nez v0, :cond_9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x800

    goto :goto_7

    :cond_b
    move/from16 v19, v5

    :goto_7
    or-int v14, v14, v19

    :goto_8
    and-int/lit8 v19, v15, 0x10

    const v34, 0xe000

    if-eqz v19, :cond_c

    or-int/lit16 v14, v14, 0x6000

    move-object/from16 v4, p4

    goto :goto_a

    :cond_c
    and-int v21, v13, v34

    move-object/from16 v4, p4

    if-nez v21, :cond_e

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x4000

    goto :goto_9

    :cond_d
    const/16 v21, 0x2000

    :goto_9
    or-int v14, v14, v21

    :cond_e
    :goto_a
    const/high16 v21, 0x70000

    and-int v21, v13, v21

    if-nez v21, :cond_10

    and-int/lit8 v21, v15, 0x20

    move-object/from16 v1, p5

    if-nez v21, :cond_f

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const/high16 v21, 0x20000

    goto :goto_b

    :cond_f
    const/high16 v21, 0x10000

    :goto_b
    or-int v14, v14, v21

    goto :goto_c

    :cond_10
    move-object/from16 v1, p5

    :goto_c
    and-int/lit8 v35, v15, 0x40

    const/high16 v36, 0x380000

    if-eqz v35, :cond_11

    const/high16 v22, 0x180000

    or-int v14, v14, v22

    move-object/from16 v8, p6

    goto :goto_e

    :cond_11
    and-int v22, v13, v36

    move-object/from16 v8, p6

    if-nez v22, :cond_13

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x100000

    goto :goto_d

    :cond_12
    const/high16 v22, 0x80000

    :goto_d
    or-int v14, v14, v22

    :cond_13
    :goto_e
    and-int/2addr v3, v15

    const/high16 v37, 0x1c00000

    if-eqz v3, :cond_14

    const/high16 v22, 0xc00000

    or-int v14, v14, v22

    move/from16 v10, p7

    goto :goto_10

    :cond_14
    and-int v22, v13, v37

    move/from16 v10, p7

    if-nez v22, :cond_16

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v22

    if-eqz v22, :cond_15

    const/high16 v22, 0x800000

    goto :goto_f

    :cond_15
    const/high16 v22, 0x400000

    :goto_f
    or-int v14, v14, v22

    :cond_16
    :goto_10
    const/high16 v22, 0xe000000

    and-int v22, v13, v22

    if-nez v22, :cond_19

    and-int/lit16 v6, v15, 0x100

    if-nez v6, :cond_17

    move-object/from16 v6, p8

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    const/high16 v22, 0x4000000

    goto :goto_11

    :cond_17
    move-object/from16 v6, p8

    :cond_18
    const/high16 v22, 0x2000000

    :goto_11
    or-int v14, v14, v22

    goto :goto_12

    :cond_19
    move-object/from16 v6, p8

    :goto_12
    const/high16 v22, 0x70000000

    and-int v22, v13, v22

    if-nez v22, :cond_1c

    and-int/lit16 v7, v15, 0x200

    if-nez v7, :cond_1a

    move-object/from16 v7, p9

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const/high16 v22, 0x20000000

    goto :goto_13

    :cond_1a
    move-object/from16 v7, p9

    :cond_1b
    const/high16 v22, 0x10000000

    :goto_13
    or-int v14, v14, v22

    goto :goto_14

    :cond_1c
    move-object/from16 v7, p9

    :goto_14
    and-int/lit8 v22, p14, 0xe

    if-nez v22, :cond_1f

    and-int/lit16 v0, v15, 0x400

    if-nez v0, :cond_1d

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    const/16 v17, 0x4

    goto :goto_15

    :cond_1d
    move-object/from16 v0, p10

    :cond_1e
    const/16 v17, 0x2

    :goto_15
    or-int v17, p14, v17

    goto :goto_16

    :cond_1f
    move-object/from16 v0, p10

    move/from16 v17, p14

    :goto_16
    and-int/lit8 v22, p14, 0x70

    if-nez v22, :cond_22

    const/16 v5, 0x800

    and-int/lit16 v0, v15, 0x800

    if-nez v0, :cond_20

    move/from16 v0, p11

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v20, 0x20

    goto :goto_17

    :cond_20
    move/from16 v0, p11

    :cond_21
    const/16 v20, 0x10

    :goto_17
    or-int v17, v17, v20

    goto :goto_18

    :cond_22
    move/from16 v0, p11

    :goto_18
    const v5, 0x5b6db6db

    and-int/2addr v5, v14

    const v0, 0x12492492

    if-ne v5, v0, :cond_24

    and-int/lit8 v0, v17, 0x5b

    const/16 v5, 0x12

    if-ne v0, v5, :cond_24

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_1a

    :cond_23
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v13, p11

    move-object v5, v4

    move-object v11, v7

    move-object v7, v8

    move v8, v10

    move-object v3, v12

    move/from16 v4, p3

    move-object/from16 v12, p10

    move-object v10, v6

    :goto_19
    move-object v6, v1

    goto/16 :goto_2a

    :cond_24
    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v0, 0x1

    and-int/lit8 v5, v13, 0x1

    sget-object v38, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const v39, -0x70000001

    const v40, -0xe000001

    const v41, -0x70001

    if-eqz v5, :cond_29

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_1b

    :cond_25
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v3, 0x20

    and-int/2addr v3, v15

    if-eqz v3, :cond_26

    and-int v14, v14, v41

    :cond_26
    const/16 v3, 0x100

    and-int/2addr v3, v15

    if-eqz v3, :cond_27

    and-int v14, v14, v40

    :cond_27
    and-int/lit16 v3, v15, 0x200

    if-eqz v3, :cond_28

    and-int v14, v14, v39

    :cond_28
    move-object/from16 v0, p10

    move/from16 v3, p11

    move-object v5, v12

    move/from16 v12, p3

    goto/16 :goto_26

    :cond_29
    :goto_1b
    if-eqz v16, :cond_2a

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1c

    :cond_2a
    move-object v5, v12

    :goto_1c
    if-eqz v18, :cond_2b

    const/4 v12, 0x1

    goto :goto_1d

    :cond_2b
    move/from16 v12, p3

    :goto_1d
    if-eqz v19, :cond_2c

    const/4 v4, 0x0

    :cond_2c
    const/16 v16, 0x20

    and-int/lit8 v16, v15, 0x20

    if-eqz v16, :cond_2d

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v33, 0x3ff

    move-object/from16 v32, v9

    invoke-static/range {v16 .. v33}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->colors-q0g_0yA(JJJJJJJJLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    move-result-object v1

    and-int v14, v14, v41

    :cond_2d
    if-eqz v35, :cond_2f

    const v8, -0x4ddfc3cc

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v0, :cond_2e

    invoke-static {v9}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v8

    :cond_2e
    move-object v0, v8

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1e

    :cond_2f
    move-object v0, v8

    :goto_1e
    if-eqz v3, :cond_30

    const/16 v3, 0x100

    const/4 v10, 0x0

    goto :goto_1f

    :cond_30
    const/16 v3, 0x100

    :goto_1f
    and-int/2addr v3, v15

    if-eqz v3, :cond_31

    new-instance v3, Lkotlin/ranges/ClosedFloatRange;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v8}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    and-int v14, v14, v40

    goto :goto_20

    :cond_31
    move-object v3, v6

    :goto_20
    and-int/lit16 v6, v15, 0x200

    if-eqz v6, :cond_32

    sget-object v6, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static {v7, v9, v6}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->animationOptions(ZLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    move-result-object v6

    and-int v7, v14, v39

    move v14, v7

    :goto_21
    const/16 v7, 0x400

    goto :goto_22

    :cond_32
    move-object v6, v7

    goto :goto_21

    :goto_22
    and-int/2addr v7, v15

    if-eqz v7, :cond_33

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x4cf30510

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v7, 0x8

    int-to-float v7, v7

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    move-object/from16 p2, v0

    const v0, 0xb94c6ed

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p3, v1

    move-object/from16 v1, v17

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    move-object/from16 p4, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0xb94c6ed

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, 0x40c90fdb

    invoke-direct {v8, v1, v7, v0}, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;-><init>(FFF)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_23
    const/16 v0, 0x800

    goto :goto_24

    :cond_33
    move-object/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 v8, p10

    goto :goto_23

    :goto_24
    and-int/2addr v0, v15

    move-object/from16 v1, p3

    if-eqz v0, :cond_34

    move-object v7, v6

    move-object v0, v8

    move v3, v12

    :goto_25
    move-object/from16 v8, p2

    move-object/from16 v6, p4

    goto :goto_26

    :cond_34
    move/from16 v3, p11

    move-object v7, v6

    move-object v0, v8

    goto :goto_25

    :goto_26
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v17, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSecHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;

    const v13, -0x4ddfc228

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v15, :cond_35

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move/from16 p8, v10

    sget-object v10, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v13, v10}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_27

    :cond_35
    move/from16 p8, v10

    :goto_27
    move-object v10, v13

    check-cast v10, Landroidx/compose/runtime/MutableState;

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, -0x4ddfc1df

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int v13, v14, v36

    move-object/from16 p9, v5

    const/high16 v5, 0x100000

    move/from16 p10, v13

    if-ne v13, v5, :cond_36

    const/4 v5, 0x1

    goto :goto_28

    :cond_36
    const/4 v5, 0x0

    :goto_28
    and-int v13, v14, v34

    move/from16 p11, v14

    const/16 v14, 0x4000

    if-ne v13, v14, :cond_37

    const/4 v14, 0x1

    goto :goto_29

    :cond_37
    const/4 v14, 0x0

    :goto_29
    or-int/2addr v5, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_38

    if-ne v14, v15, :cond_39

    :cond_38
    new-instance v14, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$2$1;

    const/4 v5, 0x0

    invoke-direct {v14, v8, v10, v4, v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$2$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_39
    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v9, v8, v14}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;

    invoke-direct {v5, v2, v6, v11}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;)V

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;

    invoke-direct {v11, v3, v10, v1, v12}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;-><init>(ZLandroidx/compose/runtime/MutableState;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Z)V

    const v14, -0x48e87e48

    invoke-static {v14, v9, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;

    move-object/from16 p2, v11

    move-object/from16 p3, v10

    move/from16 p4, v12

    move-object/from16 p5, v1

    move-object/from16 p6, v7

    move-object/from16 p7, v0

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;-><init>(Landroidx/compose/runtime/MutableState;ZLcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;)V

    const v10, -0x1500cf69

    invoke-static {v10, v9, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    and-int/lit8 v10, p11, 0xe

    const/high16 v11, 0x36000000

    or-int/2addr v10, v11

    move/from16 v14, p11

    and-int/lit16 v11, v14, 0x380

    or-int/2addr v10, v11

    and-int/lit16 v11, v14, 0x1c00

    or-int/2addr v10, v11

    or-int/2addr v10, v13

    or-int v10, v10, p10

    and-int v11, v14, v37

    or-int v28, v10, v11

    shr-int/lit8 v10, v14, 0x18

    and-int/lit8 v29, v10, 0xe

    const/16 v30, 0x20

    const/16 v21, 0x0

    move/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, p9

    move/from16 v19, v12

    move-object/from16 v20, v4

    move-object/from16 v22, v8

    move/from16 v23, p8

    move-object/from16 v26, v6

    move-object/from16 v27, v9

    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;III)V

    move v13, v3

    move-object v5, v4

    move-object v10, v6

    move-object v11, v7

    move-object v7, v8

    move v4, v12

    move/from16 v8, p8

    move-object/from16 v3, p9

    move-object v12, v0

    goto/16 :goto_19

    :goto_2a
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_3a

    new-instance v14, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move/from16 v13, p13

    move-object/from16 v42, v14

    move/from16 v14, p14

    move-object/from16 v43, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;ZIII)V

    move-object/from16 v1, v42

    move-object/from16 v0, v43

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3a
    return-void
.end method
