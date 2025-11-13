.class public abstract Lcom/samsung/sesl/compose/component/SwitchKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SeslDefaultSwitchThumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 17

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v7, 0x6

    move-object/from16 v15, p5

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v8, -0x4c6a0cb2

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v14, 0x1

    and-int/lit8 v8, p7, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v6, 0xe

    if-nez v8, :cond_2

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    or-int/2addr v8, v6

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    and-int/lit8 v4, p7, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v6, 0x70

    if-nez v4, :cond_5

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    or-int/2addr v8, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v8, v8, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v4, v6, 0x380

    if-nez v4, :cond_8

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v8, v4

    :cond_8
    :goto_5
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move-object/from16 v5, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v5, v6, 0x1c00

    if-nez v5, :cond_9

    move-object/from16 v5, p3

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_6

    :cond_b
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v8, v9

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move/from16 v9, p4

    goto :goto_9

    :cond_d
    const v9, 0xe000

    and-int/2addr v9, v6

    if-nez v9, :cond_c

    move/from16 v9, p4

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v10, 0x4000

    goto :goto_8

    :cond_e
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v8, v10

    :goto_9
    const v10, 0xb6db

    and-int/2addr v10, v8

    const/16 v11, 0x2492

    if-ne v10, v11, :cond_10

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v5

    move v5, v9

    goto/16 :goto_11

    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v4, v5

    :goto_b
    if-eqz v0, :cond_12

    move v0, v14

    goto :goto_c

    :cond_12
    move v0, v9

    :goto_c
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v5, v8, 0x6

    and-int/lit8 v5, v5, 0xe

    invoke-static {v3, v15, v5}, Lcom/samsung/sesl/compose/ui/interaction/HighlightedInteractionKt;->collectIsHighlightedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v8, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbDiameter:F

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v13

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v8, v5

    goto :goto_d

    :cond_13
    move v8, v13

    :goto_d
    const/4 v9, 0x0

    const-string v10, ""

    const/16 v12, 0x180

    const/16 v5, 0xa

    move-object v11, v15

    move v7, v13

    move v13, v5

    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v5

    if-eqz v0, :cond_14

    iget-wide v8, v2, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->uncheckedThumbColor:J

    goto :goto_e

    :cond_14
    iget-wide v8, v2, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledUncheckedThumbColor:J

    :goto_e
    if-eqz v0, :cond_15

    iget-wide v10, v2, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->checkedThumbColor:J

    goto :goto_f

    :cond_15
    iget-wide v10, v2, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledCheckedThumbColor:J

    :goto_f
    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v8, v9, v10, v11, v1}, Lcom/samsung/sesl/compose/utils/ColorUtilKt;->lerp-IbeAmgk(JJF)J

    move-result-wide v8

    const/4 v10, 0x0

    const-string v11, ""

    const/16 v13, 0x180

    const/16 v16, 0xa

    move-object v12, v15

    move/from16 p3, v0

    move v0, v14

    move/from16 v14, v16

    invoke-static/range {v8 .. v14}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v8

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const v10, 0x2bb5b5d7

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const/4 v10, 0x6

    invoke-static {v9, v15, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    move-result-object v9

    const v10, -0x4ee9b9da

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget v10, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    iget-object v13, v15, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_1a

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_16

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_16
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_10
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v9, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v11, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v11, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_17

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    :cond_17
    invoke-static {v10, v15, v10, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_18
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v9, v15, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7ab4aae9

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Dp;

    iget v5, v5, Landroidx/compose/ui/unit/Dp;->value:F

    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget v7, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbPadding:F

    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    iget-wide v7, v7, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v9, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v5, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v15, v10}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v5, p3

    :goto_11
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v9, Lcom/samsung/sesl/compose/component/SwitchKt$SeslDefaultSwitchThumb$2;

    move-object v0, v9

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslDefaultSwitchThumb$2;-><init>(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZII)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final SeslDefaultSwitchTrack(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x4

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x6a58ef88

    invoke-virtual {p4, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v2, 0x1

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, p5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p5, 0xe

    if-nez v3, :cond_2

    invoke-virtual {p4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v3, p5

    goto :goto_1

    :cond_2
    move v3, p5

    :goto_1
    and-int/2addr v0, p6

    if-eqz v0, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, p5, 0x70

    if-nez v0, :cond_5

    invoke-virtual {p4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v3, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, p5, 0x380

    if-nez v1, :cond_8

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v3, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, p5, 0x1c00

    if-nez v4, :cond_b

    invoke-virtual {p4, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v3, v4

    :cond_b
    :goto_7
    and-int/lit16 v3, v3, 0x16db

    const/16 v4, 0x492

    if-ne v3, v4, :cond_d

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_8
    move-object v5, p2

    move v6, p3

    goto :goto_d

    :cond_d
    :goto_9
    if-eqz v0, :cond_e

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_e
    if-eqz v1, :cond_f

    move p3, v2

    :cond_f
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p3, :cond_10

    iget-wide v0, p1, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->checkedTrackColor:J

    goto :goto_a

    :cond_10
    iget-wide v0, p1, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledCheckedTrackColor:J

    :goto_a
    if-eqz p3, :cond_11

    iget-wide v2, p1, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->uncheckedTrackColor:J

    goto :goto_b

    :cond_11
    iget-wide v2, p1, Lcom/samsung/sesl/compose/component/SeslSwitchColors;->disabledUncheckedTrackColor:J

    :goto_b
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v2, v3, v0, v1, p0}, Lcom/samsung/sesl/compose/utils/ColorUtilKt;->lerp-IbeAmgk(JJF)J

    move-result-wide v4

    if-eqz p3, :cond_12

    move-wide v2, v4

    goto :goto_c

    :cond_12
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, p0, v4

    if-gez v4, :cond_13

    goto :goto_c

    :cond_13
    move-wide v2, v0

    :goto_c
    const/4 v4, 0x0

    const-string v5, ""

    const/16 v7, 0x180

    const/16 v8, 0xa

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackWidth:F

    sget v2, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackHeight:F

    invoke-static {p2, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v2, v3, v0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p4, v1}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_8

    :goto_d
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_14

    new-instance p3, Lcom/samsung/sesl/compose/component/SwitchKt$SeslDefaultSwitchTrack$1;

    move-object v2, p3

    move v3, p0

    move-object v4, p1

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslDefaultSwitchTrack$1;-><init>(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZII)V

    iput-object p3, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public static final SeslSwitch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move/from16 v7, p7

    const/16 v0, 0x20

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x10

    move-object/from16 v4, p6

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x74dc74fe

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v6, p8, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v7, 0x6

    move v8, v6

    move/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v7, 0xe

    if-nez v6, :cond_2

    move/from16 v6, p0

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move/from16 v6, p0

    move v8, v7

    :goto_1
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v1, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v1, v7, 0x70

    if-nez v1, :cond_3

    move-object/from16 v1, p1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v0

    goto :goto_2

    :cond_5
    move v9, v3

    :goto_2
    or-int/2addr v8, v9

    :goto_3
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v7, 0x380

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v8, v10

    :goto_5
    and-int/lit8 v10, p8, 0x8

    if-eqz v10, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move/from16 v11, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v11, v7, 0x1c00

    if-nez v11, :cond_9

    move/from16 v11, p3

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v8, v12

    :goto_7
    const v12, 0xe000

    and-int/2addr v12, v7

    if-nez v12, :cond_e

    and-int/lit8 v12, p8, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v12, p4

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v8, v13

    goto :goto_9

    :cond_e
    move-object/from16 v12, p4

    :goto_9
    and-int/lit8 v0, p8, 0x20

    const/high16 v13, 0x70000

    if-eqz v0, :cond_10

    const/high16 v14, 0x30000

    or-int/2addr v8, v14

    :cond_f
    move-object/from16 v14, p5

    goto :goto_b

    :cond_10
    and-int v14, v7, v13

    if-nez v14, :cond_f

    move-object/from16 v14, p5

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v8, v15

    :goto_b
    const v15, 0x5b6db

    and-int/2addr v15, v8

    const v13, 0x12492

    if-ne v15, v13, :cond_13

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v9

    move-object v5, v12

    move-object v6, v14

    goto/16 :goto_11

    :cond_13
    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v13, v7, 0x1

    const v15, -0xe001

    if-eqz v13, :cond_16

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_15

    and-int/2addr v8, v15

    :cond_15
    move-object v0, v9

    move v1, v11

    move-object v2, v12

    move-object v3, v14

    goto/16 :goto_10

    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v2

    :cond_17
    if-eqz v10, :cond_18

    move v11, v5

    :cond_18
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x6e292027

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/samsung/sesl/compose/foundation/theme/SeslTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-result-object v2

    const v5, 0x2c1a7ad1

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget-object v5, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->defaultSwitchColorsCached:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    if-nez v5, :cond_19

    sget-object v5, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;->TrackOnColor:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;

    invoke-static {v5, v4}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v12

    move-wide/from16 v25, v12

    sget-object v5, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;->TrackOffColor:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;

    invoke-static {v5, v4}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    move-wide/from16 v27, v5

    sget-object v10, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;->ThumbOnColor:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;

    move-object/from16 p2, v9

    invoke-static {v10, v4}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v9

    move-wide/from16 v17, v9

    sget-object v15, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;->ThumbOffColor:Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;

    invoke-static {v15, v4}, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v14

    move-wide/from16 v19, v14

    new-instance v3, Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    move-object/from16 v16, v3

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v21

    invoke-static {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v23

    invoke-static {v1, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v29

    invoke-static {v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v31

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v33}, Lcom/samsung/sesl/compose/component/SeslSwitchColors;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->defaultSwitchColorsCached:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_e

    :cond_19
    move-object/from16 p2, v9

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v3, v5

    :goto_e
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, -0xe001

    and-int/2addr v8, v1

    move-object v12, v3

    goto :goto_f

    :cond_1a
    move-object/from16 p2, v9

    :goto_f
    if-eqz v0, :cond_1c

    const v0, 0x149da2d5

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_1b

    invoke-static {v4}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v0

    :cond_1b
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v3, v0

    move v1, v11

    move-object v2, v12

    move-object/from16 v0, p2

    goto :goto_10

    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v3, p5

    move v1, v11

    move-object v2, v12

    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v5, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;

    invoke-direct {v5, v2, v3, v1}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$4;-><init>(Lcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V

    const v6, 0x2dab67b3

    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    new-instance v5, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$5;

    invoke-direct {v5, v2, v1}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$5;-><init>(Lcom/samsung/sesl/compose/component/SeslSwitchColors;Z)V

    const v6, 0x3d631a34

    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    and-int/lit8 v5, v8, 0xe

    or-int/lit16 v5, v5, 0x6c00

    and-int/lit8 v6, v8, 0x70

    or-int/2addr v5, v6

    and-int/lit16 v6, v8, 0x380

    or-int/2addr v5, v6

    shl-int/lit8 v6, v8, 0x6

    const/high16 v9, 0x70000

    and-int/2addr v6, v9

    or-int/2addr v5, v6

    shl-int/lit8 v6, v8, 0x3

    const/high16 v8, 0x380000

    and-int/2addr v6, v8

    or-int v16, v5, v6

    const/16 v17, 0x0

    move/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v0

    move v13, v1

    move-object v14, v3

    move-object v15, v4

    invoke-static/range {v8 .. v17}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt;->SeslBasicSwitch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move v11, v1

    move-object v5, v2

    move-object v6, v3

    move-object v3, v0

    :goto_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1d

    new-instance v10, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$6;

    move-object v0, v10

    move/from16 v1, p0

    move-object/from16 v2, p1

    move v4, v11

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslSwitch$6;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method

.method public static final access$SeslOpenThemeSwitchThumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 29

    move/from16 v8, p0

    move/from16 v9, p6

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v7, 0x1

    move-object/from16 v10, p5

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x55481cec

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v9, 0xe

    if-nez v3, :cond_2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_2
    move v3, v9

    :goto_1
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v3, v3, 0x30

    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v9, 0x70

    move-object/from16 v11, p1

    if-nez v1, :cond_5

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    or-int/2addr v3, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v12, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v9, 0x380

    move-object/from16 v12, p2

    if-nez v1, :cond_8

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v3, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v2, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v9, 0x1c00

    if-nez v2, :cond_9

    move-object/from16 v2, p3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x800

    goto :goto_6

    :cond_b
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v3, v4

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move/from16 v4, p4

    goto :goto_9

    :cond_d
    const v4, 0xe000

    and-int/2addr v4, v9

    if-nez v4, :cond_c

    move/from16 v4, p4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v5, 0x4000

    goto :goto_8

    :cond_e
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v3, v5

    :goto_9
    const v5, 0xb6db

    and-int/2addr v5, v3

    const/16 v6, 0x2492

    if-ne v5, v6, :cond_10

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v5, v4

    move-object v4, v2

    goto/16 :goto_11

    :cond_10
    :goto_a
    if-eqz v1, :cond_11

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v20, v1

    goto :goto_b

    :cond_11
    move-object/from16 v20, v2

    :goto_b
    if-eqz v0, :cond_12

    move/from16 v21, v7

    goto :goto_c

    :cond_12
    move/from16 v21, v4

    :goto_c
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/samsung/sesl/compose/component/SwitchKt;->rememberSwitchOpenThemeTokens(Landroid/content/Context;Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;

    move-result-object v0

    iget-object v14, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz v21, :cond_13

    iget-object v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOn:Landroidx/compose/ui/graphics/painter/Painter;

    goto :goto_d

    :cond_13
    iget-object v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    :goto_d
    if-eqz v21, :cond_14

    iget-object v0, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbOff:Landroidx/compose/ui/graphics/painter/Painter;

    :goto_e
    move-object/from16 v23, v0

    goto :goto_f

    :cond_14
    iget-object v0, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumbDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    goto :goto_e

    :goto_f
    sget-object v0, Lcom/samsung/sesl/compose/phone/resources/EmptyPainter;->INSTANCE:Lcom/samsung/sesl/compose/phone/resources/EmptyPainter;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_15

    const v0, -0x4474c30b    # -0.00424921f

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const/16 v16, 0x0

    const/16 v19, 0x3e

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, v20

    invoke-static/range {v13 .. v19}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v13, 0x2e

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v4, p0

    move v14, v6

    move v6, v13

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v22

    int-to-float v0, v7

    sub-float v26, v0, v8

    const/16 v24, 0x0

    const/16 v28, 0x2e

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v28}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v10, v14}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_10

    :cond_15
    move v14, v6

    const v0, -0x44718248

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v0, 0xfffe

    and-int v6, v3, v0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object v5, v10

    invoke-static/range {v0 .. v7}, Lcom/samsung/sesl/compose/component/SwitchKt;->SeslDefaultSwitchThumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_10
    move-object/from16 v4, v20

    move/from16 v5, v21

    :goto_11
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_16

    new-instance v13, Lcom/samsung/sesl/compose/component/SwitchKt$SeslOpenThemeSwitchThumb$1;

    move-object v0, v13

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslOpenThemeSwitchThumb$1;-><init>(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZII)V

    iput-object v13, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final access$SeslOpenThemeSwitchTrack(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 21

    move/from16 v7, p0

    move/from16 v8, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v9, 0x1

    move-object/from16 v10, p4

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x50eafa6a

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v8, 0xe

    if-nez v2, :cond_2

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v8, 0x70

    move-object/from16 v11, p1

    if-nez v0, :cond_5

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v2, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v8, 0x380

    if-nez v1, :cond_6

    move-object/from16 v1, p2

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x100

    goto :goto_4

    :cond_8
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v2, v3

    :goto_5
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_a

    or-int/lit16 v2, v2, 0xc00

    :cond_9
    move/from16 v4, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v4, v8, 0x1c00

    if-nez v4, :cond_9

    move/from16 v4, p3

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x800

    goto :goto_6

    :cond_b
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v2, v5

    :goto_7
    and-int/lit16 v5, v2, 0x16db

    const/16 v6, 0x492

    if-ne v5, v6, :cond_d

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v1

    goto/16 :goto_10

    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v0

    goto :goto_9

    :cond_e
    move-object v12, v1

    :goto_9
    if-eqz v3, :cond_f

    move v13, v9

    goto :goto_a

    :cond_f
    move v13, v4

    :goto_a
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/samsung/sesl/compose/component/SwitchKt;->rememberSwitchOpenThemeTokens(Landroid/content/Context;Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;

    move-result-object v0

    if-eqz v13, :cond_10

    iget-object v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOn:Landroidx/compose/ui/graphics/painter/Painter;

    goto :goto_b

    :cond_10
    iget-object v1, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOn:Landroidx/compose/ui/graphics/painter/Painter;

    :goto_b
    if-eqz v13, :cond_11

    iget-object v3, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackOff:Landroidx/compose/ui/graphics/painter/Painter;

    :goto_c
    move-object v15, v3

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->trackDisabledOff:Landroidx/compose/ui/graphics/painter/Painter;

    goto :goto_c

    :goto_d
    iget-object v0, v0, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;->thumb:Landroidx/compose/ui/graphics/painter/Painter;

    sget-object v3, Lcom/samsung/sesl/compose/phone/resources/EmptyPainter;->INSTANCE:Lcom/samsung/sesl/compose/phone/resources/EmptyPainter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v14, 0x0

    if-nez v4, :cond_12

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    move v9, v14

    goto/16 :goto_e

    :cond_13
    const v2, -0x56531603

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v0

    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v0

    sget-object v3, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackWidth:F

    sget v4, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbWidth:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(Ljava/lang/Comparable;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(Ljava/lang/Comparable;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    sget v3, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackHeight:F

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(Ljava/lang/Comparable;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v4

    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(Ljava/lang/Comparable;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->value:F

    sget v3, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbPadding:F

    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Landroidx/compose/ui/layout/ContentScale$Companion;->FillBounds:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    const/4 v5, 0x0

    const/16 v6, 0x26

    const/4 v2, 0x0

    move-object/from16 v3, v17

    move/from16 v4, p0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    int-to-float v1, v9

    sub-float v18, v1, v7

    const/16 v19, 0x0

    const/16 v20, 0x26

    const/16 v16, 0x0

    move v9, v14

    move-object v14, v0

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v10, v9}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_f

    :goto_e
    const v0, -0x56569c0a

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit16 v5, v2, 0x1ffe

    const/4 v6, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v13

    move-object v4, v10

    invoke-static/range {v0 .. v6}, Lcom/samsung/sesl/compose/component/SwitchKt;->SeslDefaultSwitchTrack(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_f
    move-object v3, v12

    move v4, v13

    :goto_10
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_14

    new-instance v10, Lcom/samsung/sesl/compose/component/SwitchKt$SeslOpenThemeSwitchTrack$1;

    move-object v0, v10

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/sesl/compose/component/SwitchKt$SeslOpenThemeSwitchTrack$1;-><init>(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/ui/Modifier;ZII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public static final rememberSwitchOpenThemeTokens(Landroid/content/Context;Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;
    .locals 12

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x96357d4

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x1c4e77a5

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v0, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;

    const v0, 0x7f0811ef

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    const v0, 0x7f0811ed

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v4

    const v0, 0x7f0811ee

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    const v0, 0x7f0811ec

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    const v0, 0x7f0811e5

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v7

    const v0, 0x7f0811e3

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v8

    const v0, 0x7f0811e4

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    const v0, 0x7f0811e2

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v10

    const v0, 0x7f0811f3

    invoke-static {v0, p0}, Lcom/samsung/sesl/compose/phone/resources/DrawableResourcesKt;->seslDrwablePainter$default(ILandroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v11

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lcom/samsung/sesl/compose/component/SeslSwitchOpenThemeTokens;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
