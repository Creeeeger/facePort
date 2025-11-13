.class public abstract Landroidx/compose/foundation/pager/PagerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final HorizontalPager-oI3XNZo(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 37

    move-object/from16 v15, p0

    move/from16 v14, p15

    move/from16 v13, p16

    move/from16 v11, p17

    const/16 v3, 0x100

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/16 v7, 0x80

    move-object/from16 v10, p14

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v8, 0x6f839c82

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v8, 0x1

    and-int/lit8 v9, v11, 0x1

    const/4 v12, 0x2

    const/4 v0, 0x4

    if-eqz v9, :cond_0

    or-int/lit8 v9, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v14, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v12

    :goto_0
    or-int/2addr v9, v14

    goto :goto_1

    :cond_2
    move v9, v14

    :goto_1
    and-int/lit8 v17, v11, 0x2

    if-eqz v17, :cond_3

    or-int/lit8 v9, v9, 0x30

    move-object/from16 v12, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v18, v14, 0x30

    move-object/from16 v12, p1

    if-nez v18, :cond_5

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move/from16 v18, v5

    goto :goto_2

    :cond_4
    move/from16 v18, v4

    :goto_2
    or-int v9, v9, v18

    :cond_5
    :goto_3
    and-int/lit8 v18, v11, 0x4

    if-eqz v18, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v0, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v0, v14, 0x180

    if-nez v0, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move/from16 v20, v3

    goto :goto_4

    :cond_8
    move/from16 v20, v7

    :goto_4
    or-int v9, v9, v20

    :goto_5
    and-int/lit8 v20, v11, 0x8

    if-eqz v20, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v14, 0xc00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x800

    goto :goto_6

    :cond_b
    const/16 v22, 0x400

    :goto_6
    or-int v9, v9, v22

    :goto_7
    and-int/lit8 v22, v11, 0x10

    if-eqz v22, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move/from16 v4, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v4, v14, 0x6000

    if-nez v4, :cond_c

    move/from16 v4, p4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_e

    const/16 v24, 0x4000

    goto :goto_8

    :cond_e
    const/16 v24, 0x2000

    :goto_8
    or-int v9, v9, v24

    :goto_9
    and-int/lit8 v24, v11, 0x20

    const/high16 v25, 0x30000

    if-eqz v24, :cond_f

    or-int v9, v9, v25

    move/from16 v5, p5

    goto :goto_b

    :cond_f
    and-int v26, v14, v25

    move/from16 v5, p5

    if-nez v26, :cond_11

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v27, 0x10000

    :goto_a
    or-int v9, v9, v27

    :cond_11
    :goto_b
    and-int/lit8 v27, v11, 0x40

    const/high16 v28, 0x180000

    if-eqz v27, :cond_12

    or-int v9, v9, v28

    move-object/from16 v1, p6

    goto :goto_d

    :cond_12
    and-int v28, v14, v28

    move-object/from16 v1, p6

    if-nez v28, :cond_14

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    const/high16 v29, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v29, 0x80000

    :goto_c
    or-int v9, v9, v29

    :cond_14
    :goto_d
    const/high16 v29, 0xc00000

    and-int v29, v14, v29

    if-nez v29, :cond_17

    and-int/lit16 v6, v11, 0x80

    if-nez v6, :cond_15

    move-object/from16 v6, p7

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/high16 v30, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v6, p7

    :cond_16
    const/high16 v30, 0x400000

    :goto_e
    or-int v9, v9, v30

    goto :goto_f

    :cond_17
    move-object/from16 v6, p7

    :goto_f
    and-int/lit16 v7, v11, 0x100

    const/high16 v31, 0x6000000

    if-eqz v7, :cond_18

    or-int v9, v9, v31

    move/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v31, v14, v31

    move/from16 v3, p8

    if-nez v31, :cond_1a

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v32, 0x2000000

    :goto_10
    or-int v9, v9, v32

    :cond_1a
    :goto_11
    and-int/lit16 v2, v11, 0x200

    const/high16 v33, 0x30000000

    if-eqz v2, :cond_1c

    :goto_12
    or-int v9, v9, v33

    :cond_1b
    const/16 v0, 0x400

    goto :goto_13

    :cond_1c
    and-int v33, v14, v33

    move/from16 v0, p9

    if-nez v33, :cond_1b

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v33

    if-eqz v33, :cond_1d

    const/high16 v33, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v33, 0x10000000

    goto :goto_12

    :goto_13
    and-int/lit16 v1, v11, 0x400

    if-eqz v1, :cond_1e

    or-int/lit8 v32, v13, 0x6

    move-object/from16 v0, p10

    move/from16 v33, v32

    goto :goto_15

    :cond_1e
    and-int/lit8 v32, v13, 0x6

    move-object/from16 v0, p10

    if-nez v32, :cond_20

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1f

    const/16 v33, 0x4

    goto :goto_14

    :cond_1f
    const/16 v33, 0x2

    :goto_14
    or-int v33, v13, v33

    goto :goto_15

    :cond_20
    move/from16 v33, v13

    :goto_15
    and-int/lit8 v34, v13, 0x30

    if-nez v34, :cond_22

    const/16 v0, 0x800

    and-int/lit16 v3, v11, 0x800

    move-object/from16 v0, p11

    if-nez v3, :cond_21

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/16 v23, 0x20

    goto :goto_16

    :cond_21
    const/16 v23, 0x10

    :goto_16
    or-int v33, v33, v23

    :goto_17
    move/from16 v3, v33

    goto :goto_18

    :cond_22
    move-object/from16 v0, p11

    goto :goto_17

    :goto_18
    and-int/lit16 v0, v11, 0x1000

    if-eqz v0, :cond_23

    or-int/lit16 v3, v3, 0x180

    :goto_19
    const/16 v4, 0x2000

    goto :goto_1b

    :cond_23
    and-int/lit16 v4, v13, 0x180

    if-nez v4, :cond_25

    move-object/from16 v4, p12

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    const/16 v31, 0x100

    goto :goto_1a

    :cond_24
    const/16 v31, 0x80

    :goto_1a
    or-int v3, v3, v31

    goto :goto_19

    :cond_25
    move-object/from16 v4, p12

    goto :goto_19

    :goto_1b
    and-int/2addr v4, v11

    if-eqz v4, :cond_27

    or-int/lit16 v3, v3, 0xc00

    :cond_26
    move-object/from16 v4, p13

    goto :goto_1d

    :cond_27
    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_26

    move-object/from16 v4, p13

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    const/16 v32, 0x800

    goto :goto_1c

    :cond_28
    const/16 v32, 0x400

    :goto_1c
    or-int v3, v3, v32

    :goto_1d
    const v23, 0x12492493

    and-int v4, v9, v23

    const v5, 0x12492492

    if-ne v4, v5, :cond_2a

    and-int/lit16 v4, v3, 0x493

    const/16 v5, 0x492

    if-ne v4, v5, :cond_2a

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_1e

    :cond_29
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object v4, v8

    move-object/from16 v32, v10

    move-object v2, v12

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object v8, v6

    move/from16 v6, p5

    goto/16 :goto_31

    :cond_2a
    :goto_1e
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v5, v14, 0x1

    const v4, -0x1c00001

    if-eqz v5, :cond_2e

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_1f

    :cond_2b
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x80

    and-int/2addr v0, v11

    if-eqz v0, :cond_2c

    and-int/2addr v9, v4

    :cond_2c
    const/16 v0, 0x800

    and-int/2addr v0, v11

    if-eqz v0, :cond_2d

    and-int/lit8 v3, v3, -0x71

    :cond_2d
    move-object/from16 v22, p2

    move/from16 v23, p4

    move/from16 v24, p5

    move-object/from16 v25, p6

    move/from16 v27, p8

    move/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v30, p11

    move-object/from16 v31, p12

    move-object/from16 v26, v6

    move-object/from16 v21, v8

    move-object/from16 v20, v12

    goto/16 :goto_30

    :cond_2e
    :goto_1f
    if-eqz v17, :cond_2f

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_20

    :cond_2f
    move-object v5, v12

    :goto_20
    const/4 v12, 0x0

    if-eqz v18, :cond_30

    int-to-float v4, v12

    new-instance v12, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v12, v4, v4, v4, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    goto :goto_21

    :cond_30
    move-object/from16 v12, p2

    :goto_21
    if-eqz v20, :cond_31

    sget-object v4, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    goto :goto_22

    :cond_31
    move-object v4, v8

    :goto_22
    if-eqz v22, :cond_32

    const/4 v8, 0x0

    goto :goto_23

    :cond_32
    move/from16 v8, p4

    :goto_23
    move-object/from16 p2, v4

    move-object/from16 p1, v5

    const/4 v4, 0x0

    if-eqz v24, :cond_33

    int-to-float v5, v4

    goto :goto_24

    :cond_33
    move/from16 v5, p5

    :goto_24
    if-eqz v27, :cond_34

    sget-object v17, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    :goto_25
    const/16 v4, 0x80

    goto :goto_26

    :cond_34
    move-object/from16 v17, p6

    goto :goto_25

    :goto_26
    and-int/2addr v4, v11

    move/from16 p3, v5

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_3a

    and-int/lit8 v4, v9, 0xe

    or-int v4, v4, v25

    new-instance v6, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    invoke-direct {v6}, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;-><init>()V

    move/from16 p4, v8

    invoke-static {v10}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object v8

    sget-object v20, Landroidx/compose/animation/core/VisibilityThresholdsKt;->visibilityThresholdMap:Ljava/util/Map;

    move-object/from16 v22, v12

    const/4 v12, 0x1

    int-to-float v13, v12

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/high16 v14, 0x43c80000    # 400.0f

    invoke-static {v14, v13, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/Density;

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    and-int/lit8 v20, v4, 0xe

    move/from16 v23, v0

    xor-int/lit8 v0, v20, 0x6

    move/from16 v20, v3

    const/4 v3, 0x4

    if-le v0, v3, :cond_35

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    :cond_35
    and-int/lit8 v0, v4, 0x6

    if-ne v0, v3, :cond_37

    :cond_36
    const/4 v4, 0x1

    goto :goto_27

    :cond_37
    const/4 v4, 0x0

    :goto_27
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v4

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_38

    if-ne v3, v5, :cond_39

    :cond_38
    new-instance v0, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v15, v12, v3}, Landroidx/compose/foundation/pager/PagerDefaults$flingBehavior$2$snapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/unit/LayoutDirection;F)V

    new-instance v3, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    invoke-direct {v3, v15, v0, v6}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;)V

    sget v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    invoke-direct {v0, v3, v8, v13}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/AnimationSpec;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v0

    :cond_39
    move-object v0, v3

    check-cast v0, Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    const v3, -0x1c00001

    and-int/2addr v9, v3

    goto :goto_28

    :cond_3a
    move/from16 v23, v0

    move/from16 v20, v3

    move/from16 p4, v8

    move-object/from16 v22, v12

    move-object v0, v6

    :goto_28
    if-eqz v7, :cond_3b

    const/4 v3, 0x1

    goto :goto_29

    :cond_3b
    move/from16 v3, p8

    :goto_29
    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_2a

    :cond_3c
    move/from16 v2, p9

    :goto_2a
    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    :goto_2b
    const/16 v4, 0x800

    goto :goto_2c

    :cond_3d
    move-object/from16 v1, p10

    goto :goto_2b

    :goto_2c
    and-int/2addr v4, v11

    if-eqz v4, :cond_43

    and-int/lit8 v4, v9, 0xe

    or-int/lit16 v4, v4, 0x1b0

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v6, v4, 0xe

    xor-int/lit8 v6, v6, 0x6

    const/4 v7, 0x4

    if-le v6, v7, :cond_3e

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    :cond_3e
    and-int/lit8 v4, v4, 0x6

    if-ne v4, v7, :cond_40

    :cond_3f
    const/4 v8, 0x1

    goto :goto_2d

    :cond_40
    const/4 v8, 0x0

    :goto_2d
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v8, :cond_41

    if-ne v4, v5, :cond_42

    :cond_41
    new-instance v4, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    invoke-direct {v4, v15}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_42
    check-cast v4, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    and-int/lit8 v5, v20, -0x71

    move/from16 v20, v5

    goto :goto_2e

    :cond_43
    move-object/from16 v4, p11

    :goto_2e
    if-eqz v23, :cond_44

    sget-object v5, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    move-object/from16 v21, p2

    move/from16 v24, p3

    move/from16 v23, p4

    move-object/from16 v26, v0

    move-object/from16 v29, v1

    move/from16 v28, v2

    move/from16 v27, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    :goto_2f
    move-object/from16 v25, v17

    move/from16 v3, v20

    move-object/from16 v20, p1

    goto :goto_30

    :cond_44
    move-object/from16 v21, p2

    move/from16 v24, p3

    move/from16 v23, p4

    move-object/from16 v31, p12

    move-object/from16 v26, v0

    move-object/from16 v29, v1

    move/from16 v28, v2

    move/from16 v27, v3

    move-object/from16 v30, v4

    goto :goto_2f

    :goto_30
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    shr-int/lit8 v0, v9, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shl-int/lit8 v1, v9, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v9, 0x380

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x12

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x6

    const/high16 v2, 0x70000

    and-int v5, v1, v2

    or-int/2addr v0, v5

    const/high16 v2, 0x380000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x9

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0xe000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x12

    const/high16 v2, 0x70000000

    and-int/2addr v1, v2

    or-int v17, v0, v1

    shr-int/lit8 v0, v3, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x180

    shl-int/lit8 v1, v3, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x6

    const v2, 0xe000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v18, v0, v1

    const/16 v19, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v28

    move-object/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v21

    move-object/from16 v32, v10

    move-object/from16 v10, v30

    move-object/from16 v11, v29

    move-object/from16 v13, v25

    move-object/from16 v14, v31

    move-object/from16 v15, p13

    move-object/from16 v16, v32

    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-uYRUAWA(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v2, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move/from16 v5, v23

    move/from16 v6, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move/from16 v9, v27

    move/from16 v10, v28

    move-object/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    :goto_31
    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_45

    new-instance v14, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v35, v14

    move-object/from16 v14, p13

    move-object/from16 v36, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v1, v35

    move-object/from16 v0, v36

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_45
    return-void
.end method
