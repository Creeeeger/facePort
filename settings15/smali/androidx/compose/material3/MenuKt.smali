.class public abstract Landroidx/compose/material3/MenuKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DropdownMenuItemDefaultMaxWidth:F

.field public static final DropdownMenuItemDefaultMinWidth:F

.field public static final DropdownMenuItemHorizontalPadding:F

.field public static final DropdownMenuVerticalPadding:F

.field public static final MenuListItemContainerHeight:F

.field public static final MenuVerticalMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/MenuKt;->MenuVerticalMargin:F

    sput v0, Landroidx/compose/material3/MenuKt;->MenuListItemContainerHeight:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/MenuKt;->DropdownMenuItemHorizontalPadding:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/MenuKt;->DropdownMenuVerticalPadding:F

    const/16 v0, 0x70

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/MenuKt;->DropdownMenuItemDefaultMinWidth:F

    const/16 v0, 0x118

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/MenuKt;->DropdownMenuItemDefaultMaxWidth:F

    return-void
.end method

.method public static final DropdownMenuContent-Qj0Zi0g(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v11, p10

    move/from16 v12, p12

    const/16 v0, 0x30

    move-object/from16 v5, p11

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x906ed38

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v12, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v12

    goto :goto_1

    :cond_1
    move v6, v12

    :goto_1
    and-int/lit8 v7, v12, 0x30

    if-nez v7, :cond_4

    and-int/lit8 v7, v12, 0x40

    if-nez v7, :cond_2

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    :goto_2
    if-eqz v7, :cond_3

    const/16 v7, 0x20

    goto :goto_3

    :cond_3
    const/16 v7, 0x10

    :goto_3
    or-int/2addr v6, v7

    :cond_4
    and-int/lit16 v7, v12, 0x180

    if-nez v7, :cond_6

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_4

    :cond_5
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v6, v7

    :cond_6
    and-int/lit16 v7, v12, 0xc00

    if-nez v7, :cond_8

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x800

    goto :goto_5

    :cond_7
    const/16 v7, 0x400

    :goto_5
    or-int/2addr v6, v7

    :cond_8
    and-int/lit16 v7, v12, 0x6000

    if-nez v7, :cond_a

    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x4000

    goto :goto_6

    :cond_9
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v6, v9

    goto :goto_7

    :cond_a
    move-object/from16 v7, p4

    :goto_7
    const/high16 v9, 0x30000

    and-int/2addr v9, v12

    if-nez v9, :cond_c

    move-wide/from16 v9, p5

    invoke-virtual {v5, v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_b

    const/high16 v13, 0x20000

    goto :goto_8

    :cond_b
    const/high16 v13, 0x10000

    :goto_8
    or-int/2addr v6, v13

    goto :goto_9

    :cond_c
    move-wide/from16 v9, p5

    :goto_9
    const/high16 v13, 0x180000

    and-int/2addr v13, v12

    move/from16 v15, p7

    if-nez v13, :cond_e

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_d

    const/high16 v13, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v13, 0x80000

    :goto_a
    or-int/2addr v6, v13

    :cond_e
    const/high16 v20, 0xc00000

    and-int v13, v12, v20

    move/from16 v14, p8

    if-nez v13, :cond_10

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_f

    const/high16 v13, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v13, 0x400000

    :goto_b
    or-int/2addr v6, v13

    :cond_10
    const/high16 v13, 0x6000000

    and-int/2addr v13, v12

    if-nez v13, :cond_12

    move-object/from16 v13, p9

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x4000000

    goto :goto_c

    :cond_11
    const/high16 v16, 0x2000000

    :goto_c
    or-int v6, v6, v16

    goto :goto_d

    :cond_12
    move-object/from16 v13, p9

    :goto_d
    const/high16 v16, 0x30000000

    and-int v16, v12, v16

    if-nez v16, :cond_14

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x20000000

    goto :goto_e

    :cond_13
    const/high16 v16, 0x10000000

    :goto_e
    or-int v6, v6, v16

    :cond_14
    const v16, 0x12492493

    and-int v8, v6, v16

    const v0, 0x12492492

    if-ne v8, v0, :cond_16

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_15

    :cond_16
    :goto_f
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v0, v6, 0x3

    and-int/lit8 v0, v0, 0xe

    const/16 v8, 0x30

    or-int/2addr v0, v8

    and-int/lit8 v0, v0, 0x7e

    const-string v8, "DropDownMenu"

    invoke-static {v2, v8, v5, v0}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    sget-object v8, Landroidx/compose/material3/MenuKt$DropdownMenuContent$scale$2;->INSTANCE:Landroidx/compose/material3/MenuKt$DropdownMenuContent$scale$2;

    sget-object v21, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v2, v0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const v7, 0x7f7efbe4

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v16, 0x3f4ccccd    # 0.8f

    const/high16 v22, 0x3f800000    # 1.0f

    if-eqz v2, :cond_17

    move/from16 v2, v22

    goto :goto_10

    :cond_17
    move/from16 v2, v16

    :goto_10
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v7, v0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const v9, 0x7f7efbe4

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v18, :cond_18

    move/from16 v16, v22

    :cond_18
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v5, v13}, Landroidx/compose/material3/MenuKt$DropdownMenuContent$scale$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v8, 0x0

    move-object v13, v0

    move-object v14, v2

    move-object v15, v10

    move-object/from16 v17, v21

    move-object/from16 v18, v5

    move/from16 v19, v8

    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v2

    sget-object v9, Landroidx/compose/material3/MenuKt$DropdownMenuContent$alpha$2;->INSTANCE:Landroidx/compose/material3/MenuKt$DropdownMenuContent$alpha$2;

    iget-object v10, v0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v10}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const v12, -0xeddbe08

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v13, 0x0

    if-eqz v10, :cond_19

    move/from16 v14, v22

    :goto_11
    const/4 v10, 0x0

    goto :goto_12

    :cond_19
    move v14, v13

    goto :goto_11

    :goto_12
    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v7, :cond_1a

    :goto_13
    const/4 v7, 0x0

    goto :goto_14

    :cond_1a
    move/from16 v22, v13

    goto :goto_13

    :goto_14
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v5, v12}, Landroidx/compose/material3/MenuKt$DropdownMenuContent$alpha$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v13, v0

    move-object/from16 v17, v21

    move-object/from16 v18, v5

    move/from16 v19, v8

    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    and-int/lit16 v10, v6, 0x380

    const/16 v12, 0x100

    if-ne v10, v12, :cond_1b

    const/4 v7, 0x1

    :cond_1b
    or-int/2addr v7, v9

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_1c

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v7, :cond_1d

    :cond_1c
    new-instance v9, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;

    invoke-direct {v9, v3, v2, v0}, Landroidx/compose/material3/MenuKt$DropdownMenuContent$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    new-instance v0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$2;

    invoke-direct {v0, v1, v4, v11}, Landroidx/compose/material3/MenuKt$DropdownMenuContent$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function3;)V

    const v2, 0x5dca9b0d

    invoke-static {v2, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    shr-int/lit8 v0, v6, 0x9

    and-int/lit8 v2, v0, 0x70

    or-int v2, v2, v20

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v2

    shr-int/lit8 v2, v6, 0x6

    const v6, 0xe000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    const/high16 v6, 0x380000

    and-int/2addr v2, v6

    or-int v24, v0, v2

    const/16 v25, 0x8

    const-wide/16 v17, 0x0

    move-object/from16 v14, p4

    move-wide/from16 v15, p5

    move/from16 v19, p7

    move/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v23, v5

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    :goto_15
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_1e

    new-instance v14, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;I)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

.method public static final DropdownMenuItemContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v8, p7

    move/from16 v10, p10

    const/16 v0, 0x30

    move-object/from16 v9, p9

    check-cast v9, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x5d43aee9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v10, 0x6

    move-object/from16 v11, p0

    if-nez v1, :cond_1

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v10

    goto :goto_1

    :cond_1
    move v1, v10

    :goto_1
    and-int/lit8 v2, v10, 0x30

    move-object/from16 v15, p1

    if-nez v2, :cond_3

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v10, 0x180

    move-object/from16 v14, p2

    if-nez v2, :cond_5

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v10, 0xc00

    move-object/from16 v13, p3

    if-nez v2, :cond_7

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    and-int/lit16 v2, v10, 0x6000

    move-object/from16 v12, p4

    if-nez v2, :cond_9

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_5

    :cond_8
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x30000

    and-int/2addr v2, v10

    move/from16 v7, p5

    if-nez v2, :cond_b

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v1, v2

    :cond_b
    const/high16 v2, 0x180000

    and-int/2addr v2, v10

    move-object/from16 v6, p6

    if-nez v2, :cond_d

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v2, 0x80000

    :goto_7
    or-int/2addr v1, v2

    :cond_d
    const/high16 v2, 0xc00000

    and-int/2addr v2, v10

    if-nez v2, :cond_f

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/high16 v2, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v2, 0x400000

    :goto_8
    or-int/2addr v1, v2

    :cond_f
    const/high16 v2, 0x6000000

    and-int/2addr v2, v10

    move-object/from16 v5, p8

    if-nez v2, :cond_11

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v2, 0x2000000

    :goto_9
    or-int/2addr v1, v2

    :cond_11
    const v2, 0x2492493

    and-int/2addr v1, v2

    const v2, 0x2492492

    if-ne v1, v2, :cond_13

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_c

    :cond_13
    :goto_a
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/16 v16, 0x6

    const/16 v17, 0x6

    move-object v5, v9

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v1

    const/16 v18, 0x18

    const/16 v16, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p8

    move-object v14, v1

    move/from16 v15, p5

    move-object/from16 v17, p1

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget v15, Landroidx/compose/material3/MenuKt;->DropdownMenuItemDefaultMaxWidth:F

    const/16 v16, 0x0

    sget v13, Landroidx/compose/material3/MenuKt;->DropdownMenuItemDefaultMinWidth:F

    sget v14, Landroidx/compose/material3/MenuKt;->MenuListItemContainerHeight:F

    const/16 v17, 0x8

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    invoke-static {v3, v2, v9, v0}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v3, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v9, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, v9, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_18

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_14

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_14
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_b
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_15

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    invoke-static {v3, v9, v3, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_16
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/Typography;

    iget-object v1, v1, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    new-instance v12, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MenuItemColors;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x3f7b66ec

    invoke-static {v2, v12, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    invoke-static {v1, v2, v9, v0}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_c
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_17

    new-instance v13, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;I)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final calculateTransformOrigin(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)J
    .locals 6

    iget v0, p1, Landroidx/compose/ui/unit/IntRect;->left:I

    iget v1, p0, Landroidx/compose/ui/unit/IntRect;->right:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    iget v1, p1, Landroidx/compose/ui/unit/IntRect;->right:I

    iget v4, p0, Landroidx/compose/ui/unit/IntRect;->left:I

    if-gt v1, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    sub-int v5, v1, v0

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroidx/compose/ui/unit/IntRect;->right:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v0

    int-to-float v0, v5

    iget v4, p1, Landroidx/compose/ui/unit/IntRect;->left:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_1
    iget v1, p1, Landroidx/compose/ui/unit/IntRect;->top:I

    iget v4, p0, Landroidx/compose/ui/unit/IntRect;->bottom:I

    if-lt v1, v4, :cond_3

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget v5, p1, Landroidx/compose/ui/unit/IntRect;->bottom:I

    iget p0, p0, Landroidx/compose/ui/unit/IntRect;->top:I

    if-gt v5, p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    int-to-float p0, v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float v2, p0, p1

    :goto_3
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide p0

    return-wide p0
.end method
