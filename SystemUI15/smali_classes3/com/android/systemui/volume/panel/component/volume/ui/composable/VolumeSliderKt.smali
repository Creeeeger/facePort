.class public abstract Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final VolumeSlider(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p3

    move/from16 v14, p7

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v13, p6

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x10a05fd1

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, p8, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v14, 0xe

    if-nez v6, :cond_2

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    or-int/2addr v6, v14

    goto :goto_1

    :cond_2
    move v6, v14

    :goto_1
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v14, 0x70

    if-nez v4, :cond_5

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v5, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v14, 0x380

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v6, v7

    :goto_5
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v6, v6, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v14, 0x1c00

    if-nez v7, :cond_b

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v6, v7

    :cond_b
    :goto_7
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v7, p4

    goto :goto_9

    :cond_d
    const v7, 0xe000

    and-int/2addr v7, v14

    if-nez v7, :cond_c

    move-object/from16 v7, p4

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v8, 0x4000

    goto :goto_8

    :cond_e
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v6, v8

    :goto_9
    and-int/lit8 v3, p8, 0x20

    if-eqz v3, :cond_10

    const/high16 v3, 0x30000

    or-int/2addr v6, v3

    :cond_f
    move-object/from16 v3, p5

    :goto_a
    move/from16 v16, v6

    goto :goto_c

    :cond_10
    const/high16 v3, 0x70000

    and-int/2addr v3, v14

    if-nez v3, :cond_f

    move-object/from16 v3, p5

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const/high16 v8, 0x20000

    goto :goto_b

    :cond_11
    const/high16 v8, 0x10000

    :goto_b
    or-int/2addr v6, v8

    goto :goto_a

    :goto_c
    const v6, 0x5b6db

    and-int v6, v16, v6

    const v8, 0x12492

    if-ne v6, v8, :cond_13

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v5

    move-object v5, v7

    move-object/from16 v21, v13

    goto/16 :goto_12

    :cond_13
    :goto_d
    if-eqz v4, :cond_14

    const/4 v4, 0x0

    move-object/from16 v17, v4

    goto :goto_e

    :cond_14
    move-object/from16 v17, v5

    :goto_e
    if-eqz v2, :cond_15

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v2

    goto :goto_f

    :cond_15
    move-object v5, v7

    :goto_f
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v2, -0xd73a9fb

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v2, -0x425f5701

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v4, :cond_16

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v2, Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;

    instance-of v6, v6, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState$Empty;

    if-nez v6, :cond_18

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;

    invoke-interface {v6}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;->isEnabled()Z

    move-result v6

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;->isEnabled()Z

    move-result v7

    if-eq v6, v7, :cond_17

    goto :goto_10

    :cond_17
    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;->getValue()F

    move-result v6

    const/16 v11, 0xc00

    const/16 v12, 0x16

    const/4 v7, 0x0

    const-string v8, "VolumeSliderValueAnimation"

    const/4 v9, 0x0

    move-object v10, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    goto :goto_11

    :cond_18
    :goto_10
    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;->getValue()F

    move-result v6

    invoke-static {v6}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v6

    :goto_11
    invoke-interface {v2, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v2, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$1;

    invoke-direct {v2, v1, v15, v0, v6}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    invoke-static {v5, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;->getValueRange()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;->isEnabled()Z

    move-result v7

    new-instance v8, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$2;

    invoke-direct {v8, v1, v15}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$2;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;Lkotlin/jvm/functions/Function0;)V

    const v9, 0x67693e69

    invoke-static {v9, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    new-instance v8, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$3;

    invoke-direct {v8, v1}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$3;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V

    const v9, -0xebcef25

    invoke-static {v9, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/high16 v8, 0x30000000

    and-int/lit8 v9, v16, 0x70

    or-int/2addr v8, v9

    shl-int/lit8 v9, v16, 0x3

    and-int/lit16 v9, v9, 0x1c00

    or-int/2addr v8, v9

    const/high16 v9, 0x1c00000

    shl-int/lit8 v10, v16, 0x6

    and-int/2addr v9, v10

    or-int v16, v8, v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x140

    move-object/from16 v3, p1

    move-object/from16 v20, v5

    move-object/from16 v5, v17

    move-object/from16 v9, p5

    move-object/from16 v21, v13

    move/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-static/range {v2 .. v16}, Lcom/android/compose/PlatformSliderKt;->PlatformSlider-Wu8B24Y(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/android/compose/PlatformSliderColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v17

    move-object/from16 v5, v20

    :goto_12
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_19

    new-instance v10, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$4;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$VolumeSlider$4;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/android/compose/PlatformSliderColors;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final access$SliderIcon(Lcom/android/systemui/common/shared/model/Icon;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move/from16 v3, p2

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    move-object/from16 v4, p4

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x1a7ab652

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v5, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0xe

    move-object/from16 v13, p0

    if-nez v6, :cond_2

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v0, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v0, v5, 0x70

    if-nez v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :goto_3
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v1, v5, 0x380

    if-nez v1, :cond_8

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_4

    :cond_7
    const/16 v1, 0x80

    :goto_4
    or-int/2addr v6, v1

    :cond_8
    :goto_5
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v7, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v5, 0x1c00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_6

    :cond_b
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v6, v8

    :goto_7
    and-int/lit16 v8, v6, 0x16db

    const/16 v9, 0x492

    if-ne v8, v9, :cond_d

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_c

    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_e
    move-object v1, v7

    :goto_9
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v3, :cond_f

    const/16 v17, 0x0

    const/16 v20, 0x1c

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v19, p1

    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    goto :goto_a

    :cond_f
    move-object v7, v1

    :goto_a
    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v7, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v9, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v4, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v12, v4, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_14

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_10

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_b
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v10, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_11

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    :cond_11
    invoke-static {v9, v4, v9, v8}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_12
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v7, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v8, 0x18

    int-to-float v8, v8

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    and-int/lit8 v6, v6, 0xe

    or-int/lit8 v11, v6, 0x30

    const/4 v12, 0x4

    const-wide/16 v8, 0x0

    move-object/from16 v6, p0

    move-object v10, v4

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/common/ui/compose/IconKt;->Icon-FNF3uiM(Lcom/android/systemui/common/shared/model/Icon;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v7, v1

    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v9, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$SliderIcon$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt$SliderIcon$2;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method
