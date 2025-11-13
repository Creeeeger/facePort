.class public abstract Landroidx/compose/material3/CheckboxKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CheckboxDefaultPadding:F

.field public static final CheckboxSize:F

.field public static final RadiusSize:F

.field public static final StrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/CheckboxKt;->CheckboxDefaultPadding:F

    const/16 v1, 0x14

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/CheckboxKt;->CheckboxSize:F

    sput v0, Landroidx/compose/material3/CheckboxKt;->StrokeWidth:F

    sput v0, Landroidx/compose/material3/CheckboxKt;->RadiusSize:F

    return-void
.end method

.method public static final Checkbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p7

    const/16 v0, 0x20

    const/4 v3, 0x2

    const/16 v4, 0x10

    move-object/from16 v5, p6

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x53d92a91

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v8, p8, 0x1

    const/4 v9, 0x4

    if-eqz v8, :cond_0

    or-int/lit8 v8, v7, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v7, 0x6

    if-nez v8, :cond_2

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v7, 0x30

    if-nez v3, :cond_5

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    or-int/2addr v8, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v7, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    :goto_5
    and-int/lit8 v11, p8, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p3

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v8, v13

    :goto_7
    and-int/lit16 v13, v7, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, p8, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p4

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v8, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v14, p8, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_10

    or-int/2addr v8, v15

    :cond_f
    move-object/from16 v15, p5

    goto :goto_b

    :cond_10
    and-int/2addr v15, v7

    if-nez v15, :cond_f

    move-object/from16 v15, p5

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v16, 0x10000

    :goto_a
    or-int v8, v8, v16

    :goto_b
    const v16, 0x12493

    and-int v9, v8, v16

    const v0, 0x12492

    if-ne v9, v0, :cond_13

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v10

    move v4, v12

    move-object v6, v15

    goto/16 :goto_12

    :cond_13
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v7, 0x1

    const/4 v9, 0x0

    const v17, -0xe001

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_15

    and-int v8, v8, v17

    :cond_15
    move-object v0, v10

    move v3, v12

    move-object v4, v13

    move-object/from16 v17, v15

    goto :goto_e

    :cond_16
    :goto_d
    if-eqz v3, :cond_17

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v0

    :cond_17
    if-eqz v11, :cond_18

    move v12, v6

    :cond_18
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_19

    invoke-static {v5}, Landroidx/compose/material3/CheckboxDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/CheckboxColors;

    move-result-object v0

    and-int v8, v8, v17

    move-object v13, v0

    :cond_19
    if-eqz v14, :cond_15

    move-object/from16 v17, v9

    move-object v0, v10

    move v3, v12

    move-object v4, v13

    :goto_e
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v1, :cond_1a

    sget-object v10, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    goto :goto_f

    :cond_1a
    sget-object v10, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    :goto_f
    const v11, 0x3e66f6ba

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v11, 0x0

    if-eqz v2, :cond_1f

    and-int/lit8 v9, v8, 0x70

    const/16 v12, 0x20

    if-ne v9, v12, :cond_1b

    move v9, v6

    goto :goto_10

    :cond_1b
    move v9, v11

    :goto_10
    and-int/lit8 v12, v8, 0xe

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1c

    goto :goto_11

    :cond_1c
    move v6, v11

    :goto_11
    or-int/2addr v6, v9

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_1d

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v6, :cond_1e

    :cond_1d
    new-instance v9, Landroidx/compose/material3/CheckboxKt$Checkbox$1$1;

    invoke-direct {v9, v2, v1}, Landroidx/compose/material3/CheckboxKt$Checkbox$1$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    check-cast v9, Lkotlin/jvm/functions/Function0;

    :cond_1f
    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, 0x7ff80

    and-int v15, v8, v6

    const/16 v16, 0x0

    move-object v8, v10

    move-object v10, v0

    move v11, v3

    move-object v12, v4

    move-object/from16 v13, v17

    move-object v14, v5

    invoke-static/range {v8 .. v16}, Landroidx/compose/material3/CheckboxKt;->TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v4

    move-object/from16 v6, v17

    move v4, v3

    move-object v3, v0

    :goto_12
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_20

    new-instance v10, Landroidx/compose/material3/CheckboxKt$Checkbox$2;

    move-object v0, v10

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v13

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CheckboxKt$Checkbox$2;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v0, p4

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x77a265e0

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v13, 0x6

    and-int/lit8 v6, v5, 0x6

    const/4 v14, 0x2

    if-nez v6, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v14

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x493

    const/16 v8, 0x492

    if-ne v7, v8, :cond_9

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_19

    :cond_9
    :goto_5
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0xe

    const/4 v15, 0x0

    invoke-static {v2, v15, v0, v6, v14}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v12

    sget-object v6, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkDrawFraction$1;->INSTANCE:Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkDrawFraction$1;

    sget-object v16, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v11, v12, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v11}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/state/ToggleableState;

    const v8, 0x6b4ad266

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    if-eqz v7, :cond_a

    if-eq v7, v10, :cond_c

    if-ne v7, v14, :cond_b

    :cond_a
    move/from16 v7, v18

    goto :goto_6

    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_c
    move/from16 v7, v17

    :goto_6
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v13, v12, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/compose/ui/state/ToggleableState;

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_d

    if-eq v8, v10, :cond_f

    if-ne v8, v14, :cond_e

    :cond_d
    move/from16 v8, v18

    goto :goto_7

    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_f
    move/from16 v8, v17

    :goto_7
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v12}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v10, v0, v15}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkDrawFraction$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v15, 0x0

    move-object v6, v12

    move-object v9, v10

    const/4 v14, 0x1

    move-object/from16 v10, v16

    move-object/from16 v19, v11

    move-object v11, v0

    move-object/from16 v20, v12

    move v12, v15

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v12

    sget-object v6, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$1;->INSTANCE:Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$1;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/state/ToggleableState;

    const v8, -0x550dd391

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_11

    if-eq v7, v14, :cond_11

    const/4 v9, 0x2

    if-ne v7, v9, :cond_10

    move/from16 v7, v18

    :goto_8
    const/4 v11, 0x0

    goto :goto_9

    :cond_10
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_11
    move/from16 v7, v17

    goto :goto_8

    :goto_9
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/state/ToggleableState;

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_13

    if-eq v8, v14, :cond_13

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    move/from16 v17, v18

    goto :goto_a

    :cond_12
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_13
    :goto_a
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v0, v10}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$checkCenterGravitationShiftFraction$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object/from16 v6, v20

    move-object/from16 v10, v16

    move v13, v11

    move-object v11, v0

    move-object/from16 v28, v12

    move v12, v15

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v15

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v12, :cond_14

    new-instance v6, Landroidx/compose/material3/CheckDrawingCache;

    invoke-direct {v6}, Landroidx/compose/material3/CheckDrawingCache;-><init>()V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v27, v6

    check-cast v27, Landroidx/compose/material3/CheckDrawingCache;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    if-ne v2, v11, :cond_15

    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->uncheckedCheckmarkColor:J

    goto :goto_b

    :cond_15
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->checkedCheckmarkColor:J

    :goto_b
    const/16 v16, 0x32

    const/16 v17, 0x64

    if-ne v2, v11, :cond_16

    move/from16 v10, v17

    :goto_c
    const/4 v8, 0x6

    const/4 v9, 0x0

    goto :goto_d

    :cond_16
    move/from16 v10, v16

    goto :goto_c

    :goto_d
    invoke-static {v10, v13, v9, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v10

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/4 v9, 0x0

    move-object v8, v10

    move-object v10, v0

    move-object v13, v11

    move/from16 v11, v18

    move-object/from16 v29, v12

    move/from16 v12, v19

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    if-eqz v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_19

    if-eq v6, v14, :cond_18

    const/4 v7, 0x2

    if-ne v6, v7, :cond_17

    goto :goto_e

    :cond_17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_18
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->uncheckedBoxColor:J

    goto :goto_f

    :cond_19
    :goto_e
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->checkedBoxColor:J

    goto :goto_f

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_1d

    if-eq v6, v14, :cond_1c

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1b

    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBoxColor:J

    goto :goto_f

    :cond_1b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1c
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBoxColor:J

    goto :goto_f

    :cond_1d
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->disabledCheckedBoxColor:J

    :goto_f
    if-eqz v1, :cond_1f

    const v8, -0x176b6542

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-ne v2, v13, :cond_1e

    move/from16 v11, v17

    :goto_10
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_11

    :cond_1e
    move/from16 v11, v16

    goto :goto_10

    :goto_11
    invoke-static {v11, v10, v9, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    const/16 v18, 0x0

    const/16 v19, 0xc

    const/4 v9, 0x0

    move-object v8, v11

    move-object v10, v0

    move/from16 v11, v18

    move-object/from16 v30, v12

    move/from16 v12, v19

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_12
    move-object v12, v6

    goto :goto_13

    :cond_1f
    move-object/from16 v30, v12

    const/4 v8, 0x0

    const v9, -0x1768a402

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v9, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_12

    :goto_13
    if-eqz v1, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_22

    if-eq v6, v14, :cond_21

    const/4 v7, 0x2

    if-ne v6, v7, :cond_20

    goto :goto_14

    :cond_20
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_21
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->uncheckedBorderColor:J

    goto :goto_15

    :cond_22
    :goto_14
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->checkedBorderColor:J

    goto :goto_15

    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_26

    if-eq v6, v14, :cond_25

    const/4 v7, 0x2

    if-ne v6, v7, :cond_24

    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->disabledIndeterminateBorderColor:J

    goto :goto_15

    :cond_24
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_25
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->disabledUncheckedBorderColor:J

    goto :goto_15

    :cond_26
    iget-wide v6, v4, Landroidx/compose/material3/CheckboxColors;->disabledBorderColor:J

    :goto_15
    if-eqz v1, :cond_28

    const v8, -0x66e9bcb1

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-ne v2, v13, :cond_27

    move/from16 v8, v17

    :goto_16
    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_17

    :cond_27
    move/from16 v8, v16

    goto :goto_16

    :goto_17
    invoke-static {v8, v11, v10, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v8

    const/4 v11, 0x0

    const/16 v13, 0xc

    const/4 v9, 0x0

    move-object v10, v0

    move-object v14, v12

    move v12, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_18

    :cond_28
    move-object v14, v12

    const/4 v8, 0x0

    const v9, -0x66e6fb71

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v6, v7}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v9, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_18
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget v8, Landroidx/compose/material3/CheckboxKt;->CheckboxSize:F

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    move-object/from16 v9, v30

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    move-object/from16 v10, v28

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_29

    move-object/from16 v8, v29

    if-ne v11, v8, :cond_2a

    :cond_29
    new-instance v11, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    move-object/from16 v23, v6

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v15

    invoke-direct/range {v21 .. v27}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Landroidx/compose/material3/CheckDrawingCache;)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2a
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    invoke-static {v7, v11, v0, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :goto_19
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_2b

    new-instance v7, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$2;

    move-object v0, v7

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/CheckboxKt$CheckboxImpl$2;-><init>(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;I)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method

.method public static final TriStateCheckbox(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v6, p1

    move/from16 v7, p7

    const/16 v0, 0x20

    const/4 v1, 0x4

    const/16 v2, 0x10

    move-object/from16 v15, p6

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x5fdd98b1

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p8, 0x1

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    or-int/lit8 v4, v7, 0x6

    move v8, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v7, 0x6

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v5

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v8, v7

    :goto_1
    and-int/lit8 v9, p8, 0x2

    if-eqz v9, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v7, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v0

    goto :goto_2

    :cond_4
    move v9, v2

    :goto_2
    or-int/2addr v8, v9

    :cond_5
    :goto_3
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v11, v7, 0xc00

    if-nez v11, :cond_9

    move/from16 v11, p3

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v8, v12

    :goto_7
    and-int/lit16 v12, v7, 0x6000

    if-nez v12, :cond_e

    and-int/lit8 v12, p8, 0x10

    if-nez v12, :cond_c

    move-object/from16 v12, p4

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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

    const/high16 v13, 0x30000

    if-eqz v0, :cond_10

    or-int/2addr v8, v13

    :cond_f
    move-object/from16 v13, p5

    goto :goto_b

    :cond_10
    and-int/2addr v13, v7

    if-nez v13, :cond_f

    move-object/from16 v13, p5

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v8, v14

    :goto_b
    const v14, 0x12493

    and-int/2addr v14, v8

    const v5, 0x12492

    if-ne v14, v5, :cond_13

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v9

    move v4, v11

    move-object v5, v12

    goto/16 :goto_10

    :cond_13
    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v7, 0x1

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const v14, -0xe001

    if-eqz v5, :cond_16

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_15

    and-int/2addr v8, v14

    :cond_15
    move/from16 v20, v8

    move-object v5, v9

    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    goto :goto_e

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    move-object/from16 v9, v16

    :cond_17
    if-eqz v10, :cond_18

    move v11, v3

    :cond_18
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_19

    invoke-static {v15}, Landroidx/compose/material3/CheckboxDefaults;->colors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/CheckboxColors;

    move-result-object v1

    and-int/2addr v8, v14

    move-object v12, v1

    :cond_19
    if-eqz v0, :cond_15

    const/4 v0, 0x0

    move-object/from16 v19, v0

    move/from16 v20, v8

    move-object v5, v9

    move/from16 v17, v11

    move-object/from16 v18, v12

    :goto_e
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x5cbcb62

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v6, :cond_1a

    sget v0, Landroidx/compose/material3/tokens/CheckboxTokens;->StateLayerSize:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float v9, v0, v1

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/16 v13, 0x36

    const/4 v14, 0x4

    move-object v12, v15

    invoke-static/range {v8 .. v14}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v2

    new-instance v8, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v8, v3}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v3, v17

    move-object v4, v8

    move-object v14, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/selection/ToggleableKt;->triStateToggleable-O2vRcR0(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_f

    :cond_1a
    move-object v14, v5

    move-object/from16 v0, v16

    :goto_f
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v6, :cond_1b

    sget-object v1, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v16, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    :cond_1b
    move-object/from16 v1, v16

    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Landroidx/compose/material3/CheckboxKt;->CheckboxDefaultPadding:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    shr-int/lit8 v0, v20, 0x9

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v1, v20, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v20, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int v13, v0, v1

    move/from16 v8, v17

    move-object/from16 v9, p0

    move-object/from16 v11, v18

    move-object v12, v15

    invoke-static/range {v8 .. v13}, Landroidx/compose/material3/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/runtime/Composer;I)V

    move-object v3, v14

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v13, v19

    :goto_10
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1c

    new-instance v10, Landroidx/compose/material3/CheckboxKt$TriStateCheckbox$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v13

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CheckboxKt$TriStateCheckbox$1;-><init>(Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
