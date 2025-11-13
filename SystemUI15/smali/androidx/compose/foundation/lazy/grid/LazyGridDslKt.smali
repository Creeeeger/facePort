.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final LazyHorizontalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/16 v5, 0x20

    move-object/from16 v6, p10

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x7e93b31a

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v12, 0x1

    const/4 v9, 0x4

    if-eqz v8, :cond_0

    or-int/lit8 v8, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v11, 0x6

    if-nez v8, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    or-int/2addr v8, v11

    goto :goto_1

    :cond_2
    move v8, v11

    :goto_1
    and-int/2addr v3, v12

    if-eqz v3, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v11, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v5

    goto :goto_2

    :cond_5
    move v13, v2

    :goto_2
    or-int/2addr v8, v13

    :goto_3
    and-int/lit16 v13, v11, 0x180

    if-nez v13, :cond_8

    and-int/lit8 v13, v12, 0x4

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v13, p2

    :cond_7
    move v14, v4

    :goto_4
    or-int/2addr v8, v14

    goto :goto_5

    :cond_8
    move-object/from16 v13, p2

    :goto_5
    and-int/lit8 v14, v12, 0x8

    if-eqz v14, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move-object/from16 v15, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v15, v11, 0xc00

    if-nez v15, :cond_9

    move-object/from16 v15, p3

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v8, v8, v16

    :goto_7
    and-int/2addr v2, v12

    if-eqz v2, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move/from16 v9, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v9, v11, 0x6000

    if-nez v9, :cond_c

    move/from16 v9, p4

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v8, v8, v16

    :goto_9
    const/high16 v16, 0x30000

    and-int v17, v11, v16

    if-nez v17, :cond_10

    and-int/lit8 v17, v12, 0x20

    move-object/from16 v5, p5

    if-nez v17, :cond_f

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v5, p5

    :goto_b
    and-int/lit8 v18, v12, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_11

    or-int v8, v8, v19

    move-object/from16 v7, p6

    goto :goto_d

    :cond_11
    and-int v19, v11, v19

    move-object/from16 v7, p6

    if-nez v19, :cond_13

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v20, 0x80000

    :goto_c
    or-int v8, v8, v20

    :cond_13
    :goto_d
    const/high16 v20, 0xc00000

    and-int v20, v11, v20

    if-nez v20, :cond_16

    and-int/lit16 v0, v12, 0x80

    if-nez v0, :cond_14

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p7

    :cond_15
    const/high16 v21, 0x400000

    :goto_e
    or-int v8, v8, v21

    :goto_f
    const/16 v4, 0x100

    goto :goto_10

    :cond_16
    move-object/from16 v0, p7

    goto :goto_f

    :goto_10
    and-int/lit16 v0, v12, 0x100

    const/high16 v4, 0x6000000

    if-eqz v0, :cond_18

    or-int/2addr v8, v4

    :cond_17
    move/from16 v4, p8

    goto :goto_12

    :cond_18
    and-int/2addr v4, v11

    if-nez v4, :cond_17

    move/from16 v4, p8

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_19

    const/high16 v22, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v22, 0x2000000

    :goto_11
    or-int v8, v8, v22

    :goto_12
    and-int/lit16 v4, v12, 0x200

    const/high16 v22, 0x30000000

    if-eqz v4, :cond_1b

    or-int v8, v8, v22

    :cond_1a
    move-object/from16 v4, p9

    goto :goto_14

    :cond_1b
    and-int v4, v11, v22

    if-nez v4, :cond_1a

    move-object/from16 v4, p9

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    const/high16 v22, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v22, 0x10000000

    :goto_13
    or-int v8, v8, v22

    :goto_14
    const v22, 0x12492493

    and-int v4, v8, v22

    const v5, 0x12492492

    if-ne v4, v5, :cond_1e

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v8, v7

    move v5, v9

    move-object v2, v10

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    goto/16 :goto_23

    :cond_1e
    :goto_15
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v5, v11, 0x1

    const v19, -0x1c00001

    const v22, -0x70001

    const/4 v4, 0x0

    if-eqz v5, :cond_23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v0, 0x4

    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_20

    and-int/lit16 v8, v8, -0x381

    :cond_20
    const/16 v0, 0x20

    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_21

    and-int v8, v8, v22

    :cond_21
    const/16 v0, 0x80

    and-int/2addr v0, v12

    if-eqz v0, :cond_22

    and-int v8, v8, v19

    :cond_22
    move-object/from16 v2, p5

    move-object/from16 v0, p7

    move-object v3, v10

    move-object v5, v13

    move-object v10, v15

    :goto_16
    move v13, v8

    move/from16 v8, p8

    goto/16 :goto_1f

    :cond_23
    :goto_17
    if-eqz v3, :cond_24

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_18
    const/4 v5, 0x4

    goto :goto_19

    :cond_24
    move-object v3, v10

    goto :goto_18

    :goto_19
    and-int/lit8 v10, v12, 0x4

    if-eqz v10, :cond_25

    invoke-static {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v5

    and-int/lit16 v8, v8, -0x381

    goto :goto_1a

    :cond_25
    move-object v5, v13

    :goto_1a
    if-eqz v14, :cond_26

    int-to-float v10, v4

    sget-object v13, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v10}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v10

    goto :goto_1b

    :cond_26
    move-object v10, v15

    :goto_1b
    if-eqz v2, :cond_27

    move v9, v4

    :cond_27
    const/16 v2, 0x20

    and-int/lit8 v13, v12, 0x20

    if-eqz v13, :cond_29

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v9, :cond_28

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    goto :goto_1c

    :cond_28
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$End$1;

    :goto_1c
    and-int v8, v8, v22

    goto :goto_1d

    :cond_29
    move-object/from16 v2, p5

    :goto_1d
    if-eqz v18, :cond_2a

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    :cond_2a
    const/16 v13, 0x80

    and-int/2addr v13, v12

    if-eqz v13, :cond_2b

    sget-object v13, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v13

    and-int v8, v8, v19

    goto :goto_1e

    :cond_2b
    move-object/from16 v13, p7

    :goto_1e
    if-eqz v0, :cond_2c

    move-object v0, v13

    move v13, v8

    const/4 v8, 0x1

    goto :goto_1f

    :cond_2c
    move-object v0, v13

    goto :goto_16

    :goto_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v14, v13, 0xe

    shr-int/lit8 v15, v13, 0xf

    and-int/lit8 v15, v15, 0x70

    or-int/2addr v14, v15

    shr-int/lit8 v15, v13, 0x3

    and-int/lit16 v4, v15, 0x380

    or-int/2addr v4, v14

    and-int/lit8 v14, v4, 0xe

    xor-int/lit8 v14, v14, 0x6

    const/4 v11, 0x4

    if-le v14, v11, :cond_2d

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2e

    :cond_2d
    and-int/lit8 v14, v4, 0x6

    if-ne v14, v11, :cond_2f

    :cond_2e
    const/4 v11, 0x1

    goto :goto_20

    :cond_2f
    const/4 v11, 0x0

    :goto_20
    and-int/lit8 v14, v4, 0x70

    xor-int/lit8 v14, v14, 0x30

    const/16 v12, 0x20

    if-le v14, v12, :cond_30

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_31

    :cond_30
    and-int/lit8 v14, v4, 0x30

    if-ne v14, v12, :cond_32

    :cond_31
    const/4 v12, 0x1

    goto :goto_21

    :cond_32
    const/4 v12, 0x0

    :goto_21
    or-int/2addr v11, v12

    and-int/lit16 v12, v4, 0x380

    xor-int/lit16 v12, v12, 0x180

    const/16 v14, 0x100

    if-le v12, v14, :cond_33

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_34

    :cond_33
    and-int/lit16 v4, v4, 0x180

    if-ne v4, v14, :cond_35

    :cond_34
    const/16 v23, 0x1

    goto :goto_22

    :cond_35
    const/16 v23, 0x0

    :goto_22
    or-int v4, v11, v23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_36

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v4, :cond_37

    :cond_36
    new-instance v11, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    new-instance v4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;

    invoke-direct {v4, v10, v1, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    invoke-direct {v11, v4}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_37
    move-object v4, v11

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    and-int/lit8 v11, v15, 0xe

    or-int v11, v11, v16

    and-int/lit8 v12, v15, 0x70

    or-int/2addr v11, v12

    and-int/lit16 v12, v13, 0x1c00

    or-int/2addr v11, v12

    const v12, 0xe000

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    const/high16 v12, 0x380000

    and-int/2addr v12, v15

    or-int/2addr v11, v12

    const/high16 v12, 0x1c00000

    and-int/2addr v12, v15

    or-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0x6

    const/high16 v14, 0xe000000

    and-int/2addr v12, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0xc

    const/high16 v14, 0x70000000

    and-int/2addr v12, v14

    or-int v25, v11, v12

    shr-int/lit8 v11, v13, 0x1b

    and-int/lit8 v26, v11, 0xe

    const/16 v27, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object v14, v5

    move-object v15, v4

    move-object/from16 v16, v10

    move/from16 v17, v9

    move-object/from16 v19, v0

    move/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v22, v2

    move-object/from16 v23, p9

    move-object/from16 v24, v6

    invoke-static/range {v13 .. v27}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object v4, v10

    move v10, v8

    move-object v8, v7

    move-object v7, v2

    move-object v2, v3

    move-object v3, v5

    move v5, v9

    move-object v9, v0

    :goto_23
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_38

    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_38
    return-void
.end method
