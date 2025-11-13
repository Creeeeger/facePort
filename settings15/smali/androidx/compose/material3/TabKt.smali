.class public abstract Landroidx/compose/material3/TabKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HorizontalTextPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ActiveIndicatorHeight:F

    const/16 v0, 0x10

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/TabKt;->HorizontalTextPadding:F

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    return-void
.end method

.method public static final Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 23

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0x20

    move-object/from16 v5, p10

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0xc158108

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v7, v12, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v11, 0x6

    move v8, v7

    move/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v11, 0x6

    if-nez v7, :cond_2

    move/from16 v7, p0

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    or-int/2addr v8, v11

    goto :goto_1

    :cond_2
    move/from16 v7, p0

    move v8, v11

    :goto_1
    and-int/2addr v1, v12

    if-eqz v1, :cond_3

    or-int/lit8 v8, v8, 0x30

    move-object/from16 v9, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v11, 0x30

    move-object/from16 v9, p1

    if-nez v1, :cond_5

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    or-int/2addr v8, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v2, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v2, v11, 0x180

    if-nez v2, :cond_6

    move-object/from16 v2, p2

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    move v10, v0

    :goto_4
    or-int/2addr v8, v10

    :goto_5
    and-int/lit8 v10, v12, 0x8

    if-eqz v10, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v11, 0xc00

    if-nez v13, :cond_9

    move/from16 v13, p3

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v8, v14

    :goto_7
    and-int/lit16 v14, v11, 0x6000

    if-nez v14, :cond_e

    and-int/lit8 v14, v12, 0x10

    if-nez v14, :cond_c

    move-wide/from16 v14, p4

    invoke-virtual {v5, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v14, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v8, v8, v16

    goto :goto_9

    :cond_e
    move-wide/from16 v14, p4

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v11, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v12, 0x20

    move-wide/from16 v3, p6

    if-nez v16, :cond_f

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_f

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v18, 0x10000

    :goto_a
    or-int v8, v8, v18

    goto :goto_b

    :cond_10
    move-wide/from16 v3, p6

    :goto_b
    and-int/lit8 v18, v12, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_11

    or-int v8, v8, v19

    move-object/from16 v6, p8

    goto :goto_d

    :cond_11
    and-int v19, v11, v19

    move-object/from16 v6, p8

    if-nez v19, :cond_13

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x80000

    :goto_c
    or-int v8, v8, v19

    :cond_13
    :goto_d
    and-int/2addr v0, v12

    const/high16 v19, 0xc00000

    if-eqz v0, :cond_15

    or-int v8, v8, v19

    :cond_14
    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    and-int v0, v11, v19

    if-nez v0, :cond_14

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v8, v8, v19

    :goto_f
    const v19, 0x492493

    and-int v0, v8, v19

    const v2, 0x492492

    if-ne v0, v2, :cond_18

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v21, v3

    move-object v10, v6

    move v4, v13

    move-object/from16 v3, p2

    goto/16 :goto_15

    :cond_18
    :goto_10
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v0, 0x1

    and-int/lit8 v2, v11, 0x1

    const v19, -0x70001

    const v20, -0xe001

    if-eqz v2, :cond_1d

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_12

    :cond_19
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_1a

    and-int v8, v8, v20

    :cond_1a
    const/16 v0, 0x20

    and-int/2addr v0, v12

    if-eqz v0, :cond_1b

    and-int v8, v8, v19

    :cond_1b
    move-object/from16 v1, p2

    :cond_1c
    :goto_11
    move-wide/from16 v21, v3

    move v0, v13

    move-wide v2, v14

    goto :goto_14

    :cond_1d
    :goto_12
    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_13

    :cond_1e
    move-object/from16 v1, p2

    :goto_13
    if-eqz v10, :cond_1f

    move v13, v0

    :cond_1f
    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_20

    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v14, v0, Landroidx/compose/ui/graphics/Color;->value:J

    and-int v8, v8, v20

    :cond_20
    const/16 v0, 0x20

    and-int/2addr v0, v12

    if-eqz v0, :cond_21

    and-int v0, v8, v19

    move v8, v0

    move-wide v3, v14

    :cond_21
    if-eqz v18, :cond_1c

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_11

    :goto_14
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v4, v8, 0x6

    and-int/lit16 v4, v4, 0x380

    or-int/lit8 v4, v4, 0x6

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move/from16 p2, v10

    move/from16 p3, v13

    move-wide/from16 p4, v2

    move-object/from16 p6, v5

    move/from16 p7, v4

    move/from16 p8, v14

    invoke-static/range {p2 .. p8}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v17

    new-instance v4, Landroidx/compose/material3/TabKt$Tab$3;

    move-object v13, v4

    move-object v14, v1

    move/from16 v15, p0

    move-object/from16 v16, v6

    move/from16 v18, v0

    move-object/from16 v19, p1

    move-object/from16 v20, p9

    invoke-direct/range {v13 .. v20}, Landroidx/compose/material3/TabKt$Tab$3;-><init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    const v10, -0x20e5444c

    invoke-static {v10, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    shr-int/lit8 v4, v8, 0xc

    and-int/lit8 v10, v4, 0xe

    or-int/lit16 v10, v10, 0xc00

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v10

    shl-int/lit8 v8, v8, 0x6

    and-int/lit16 v8, v8, 0x380

    or-int v20, v4, v8

    move-wide v13, v2

    move-wide/from16 v15, v21

    move/from16 v17, p0

    move-object/from16 v19, v5

    invoke-static/range {v13 .. v20}, Landroidx/compose/material3/TabKt;->TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move v4, v0

    move-wide v14, v2

    move-object v10, v6

    move-object v3, v1

    :goto_15
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_22

    new-instance v8, Landroidx/compose/material3/TabKt$Tab$4;

    move-object v0, v8

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v5, v14

    move-object v14, v8

    move-wide/from16 v7, v21

    move-object v9, v10

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/TabKt$Tab$4;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method

.method public static final TabTransition-Klgx-Pg(JJZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x2bda6088

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v7, 0x6

    const/4 v2, 0x2

    move-wide/from16 v3, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/lit8 v5, v7, 0x30

    move-wide/from16 v14, p2

    if-nez v5, :cond_3

    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :cond_3
    and-int/lit16 v5, v7, 0x180

    if-nez v5, :cond_5

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v1, v8

    goto :goto_4

    :cond_5
    move/from16 v5, p4

    :goto_4
    and-int/lit16 v8, v7, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_5

    :cond_6
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v1, v8

    :cond_7
    and-int/lit16 v8, v1, 0x493

    const/16 v9, 0x492

    if-ne v8, v9, :cond_9

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_b

    :cond_9
    :goto_6
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v9, v1, 0xe

    const/4 v10, 0x0

    invoke-static {v8, v10, v0, v9, v2}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v8

    sget-object v2, Landroidx/compose/material3/TabKt$TabTransition$color$2;->INSTANCE:Landroidx/compose/material3/TabKt$TabTransition$color$2;

    iget-object v9, v8, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const v11, -0x770830db

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v10, :cond_a

    move-wide v12, v3

    goto :goto_7

    :cond_a
    move-wide v12, v14

    :goto_7
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v13, :cond_b

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v13, :cond_c

    :cond_b
    sget-object v10, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/animation/core/TwoWayConverter;

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object v12, v10

    check-cast v12, Landroidx/compose/animation/core/TwoWayConverter;

    iget-object v10, v8, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v10}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v16, v12

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    move-wide v11, v3

    goto :goto_8

    :cond_d
    move-wide v11, v14

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v10, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v10, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const v11, -0x770830db

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v9, :cond_e

    move-wide v11, v3

    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_e
    move-wide v11, v14

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v11, v0, v9}, Landroidx/compose/material3/TabKt$TabTransition$color$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v2, 0x0

    move-object v9, v10

    move-object v10, v13

    move-object/from16 v12, v16

    move-object v13, v0

    move v14, v2

    invoke-static/range {v8 .. v14}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v2

    sget-object v8, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v2, v2, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v2, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v9, v10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    and-int/lit8 v1, v1, 0x70

    const/16 v8, 0x8

    or-int/2addr v1, v8

    invoke-static {v2, v6, v0, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v9, Landroidx/compose/material3/TabKt$TabTransition$1;

    move-object v0, v9

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/TabKt$TabTransition$1;-><init>(JJZLkotlin/jvm/functions/Function2;I)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
