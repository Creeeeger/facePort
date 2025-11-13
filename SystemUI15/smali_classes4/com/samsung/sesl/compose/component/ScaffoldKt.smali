.class public abstract Lcom/samsung/sesl/compose/component/ScaffoldKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FabSpacing:F

.field public static final SeslLocalFabPlacement:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslLocalFabPlacement$1;->INSTANCE:Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslLocalFabPlacement$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/samsung/sesl/compose/component/ScaffoldKt;->SeslLocalFabPlacement:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const/16 v0, 0x10

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/samsung/sesl/compose/component/ScaffoldKt;->FabSpacing:F

    sget-object v0, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslLocalTopAppBarState$1;->INSTANCE:Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslLocalTopAppBarState$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final SeslScaffold-uuOAFiU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 37

    move/from16 v14, p13

    move/from16 v15, p15

    const/16 v1, 0x10

    const/16 v2, 0x20

    move-object/from16 v5, p12

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x59e65833

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v15, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v6, :cond_0

    or-int/lit8 v9, v14, 0x6

    move v10, v9

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v14, 0xe

    if-nez v9, :cond_2

    move-object/from16 v9, p0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    or-int/2addr v10, v14

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v10, v14

    :goto_1
    and-int/lit8 v11, v15, 0x2

    if-eqz v11, :cond_4

    or-int/lit8 v10, v10, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v14, 0x70

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v2

    goto :goto_2

    :cond_5
    move v13, v1

    :goto_2
    or-int/2addr v10, v13

    :goto_3
    and-int/lit8 v13, v15, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v14, 0x380

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v10, v10, v16

    :goto_5
    and-int/lit8 v16, v15, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x800

    goto :goto_6

    :cond_b
    const/16 v18, 0x400

    :goto_6
    or-int v10, v10, v18

    :goto_7
    and-int/2addr v1, v15

    if-eqz v1, :cond_c

    or-int/lit16 v10, v10, 0x6000

    move-object/from16 v0, p4

    goto :goto_9

    :cond_c
    const v18, 0xe000

    and-int v18, v14, v18

    move-object/from16 v0, p4

    if-nez v18, :cond_e

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_8

    :cond_d
    const/16 v19, 0x2000

    :goto_8
    or-int v10, v10, v19

    :cond_e
    :goto_9
    and-int/2addr v2, v15

    if-eqz v2, :cond_f

    const/high16 v19, 0x30000

    or-int v10, v10, v19

    move/from16 v4, p5

    goto :goto_b

    :cond_f
    const/high16 v19, 0x70000

    and-int v19, v14, v19

    move/from16 v4, p5

    if-nez v19, :cond_11

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v10, v10, v20

    :cond_11
    :goto_b
    const/high16 v20, 0x380000

    and-int v20, v14, v20

    if-nez v20, :cond_13

    and-int/lit8 v20, v15, 0x40

    move-wide/from16 v3, p6

    if-nez v20, :cond_12

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v10, v10, v21

    goto :goto_d

    :cond_13
    move-wide/from16 v3, p6

    :goto_d
    const/high16 v21, 0x1c00000

    and-int v21, v14, v21

    if-nez v21, :cond_16

    const/16 v0, 0x80

    and-int/lit16 v3, v15, 0x80

    if-nez v3, :cond_14

    move-wide/from16 v3, p8

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_14
    move-wide/from16 v3, p8

    :cond_15
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v10, v0

    goto :goto_f

    :cond_16
    move-wide/from16 v3, p8

    :goto_f
    const/high16 v0, 0xe000000

    and-int/2addr v0, v14

    if-nez v0, :cond_18

    const/16 v0, 0x100

    and-int/lit16 v3, v15, 0x100

    move-object/from16 v0, p10

    if-nez v3, :cond_17

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/high16 v3, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v3, 0x2000000

    :goto_10
    or-int/2addr v10, v3

    goto :goto_11

    :cond_18
    move-object/from16 v0, p10

    :goto_11
    and-int/lit16 v3, v15, 0x200

    if-eqz v3, :cond_1a

    const/high16 v3, 0x30000000

    :goto_12
    or-int/2addr v10, v3

    :cond_19
    const/16 v3, 0x400

    goto :goto_13

    :cond_1a
    const/high16 v3, 0x70000000

    and-int/2addr v3, v14

    if-nez v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/high16 v3, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v3, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v3, v15

    if-eqz v3, :cond_1c

    or-int/lit8 v3, p14, 0x6

    move-object/from16 v4, p11

    goto :goto_15

    :cond_1c
    and-int/lit8 v3, p14, 0xe

    move-object/from16 v4, p11

    if-nez v3, :cond_1e

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x4

    goto :goto_14

    :cond_1d
    const/4 v3, 0x2

    :goto_14
    or-int v3, p14, v3

    goto :goto_15

    :cond_1e
    move/from16 v3, p14

    :goto_15
    const v18, 0x5b6db6db

    and-int v0, v10, v18

    const v4, 0x12492492

    if-ne v0, v4, :cond_20

    and-int/lit8 v0, v3, 0xb

    const/4 v4, 0x2

    if-ne v0, v4, :cond_20

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v6, p4

    move-wide/from16 v10, p6

    move-wide/from16 v32, p8

    move-object/from16 v13, p10

    move-object v3, v7

    move-object v4, v8

    move-object v1, v9

    move-object v2, v12

    move/from16 v7, p5

    goto/16 :goto_22

    :cond_20
    :goto_16
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v4, -0xe000001

    const v17, -0x1c00001

    const v18, -0x380001

    if-eqz v0, :cond_25

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_17

    :cond_21
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x40

    if-eqz v0, :cond_22

    and-int v10, v10, v18

    :cond_22
    const/16 v0, 0x80

    and-int/2addr v0, v15

    if-eqz v0, :cond_23

    and-int v10, v10, v17

    :cond_23
    const/16 v0, 0x100

    and-int/2addr v0, v15

    if-eqz v0, :cond_24

    and-int/2addr v10, v4

    :cond_24
    move-object/from16 v1, p4

    move/from16 v2, p5

    move-wide/from16 v32, p8

    move-object/from16 v0, p10

    move v4, v10

    move-wide/from16 v10, p6

    goto/16 :goto_21

    :cond_25
    :goto_17
    if-eqz v6, :cond_26

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_18

    :cond_26
    move-object v0, v9

    :goto_18
    if-eqz v11, :cond_27

    sget-object v6, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_19

    :cond_27
    move-object v6, v12

    :goto_19
    if-eqz v13, :cond_28

    sget-object v7, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_28
    if-eqz v16, :cond_29

    sget-object v8, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_29
    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_1a

    :cond_2a
    move-object/from16 v1, p4

    :goto_1a
    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/sesl/compose/component/SeslFabPosition;->Companion:Lcom/samsung/sesl/compose/component/SeslFabPosition$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/samsung/sesl/compose/component/SeslFabPosition;->End:I

    goto :goto_1b

    :cond_2b
    move/from16 v2, p5

    :goto_1b
    and-int/lit8 v9, v15, 0x40

    if-eqz v9, :cond_2c

    sget-object v9, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v9

    iget-wide v11, v9, Landroidx/compose/material3/ColorScheme;->background:J

    and-int v10, v10, v18

    :goto_1c
    const/16 v9, 0x80

    goto :goto_1d

    :cond_2c
    move-wide/from16 v11, p6

    goto :goto_1c

    :goto_1d
    and-int/2addr v9, v15

    if-eqz v9, :cond_2d

    invoke-static {v11, v12, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v20

    and-int v10, v10, v17

    :goto_1e
    const/16 v9, 0x100

    goto :goto_1f

    :cond_2d
    move-wide/from16 v20, p8

    goto :goto_1e

    :goto_1f
    and-int/2addr v9, v15

    if-eqz v9, :cond_2e

    sget-object v9, Lcom/samsung/sesl/compose/component/SeslScaffoldDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslScaffoldDefaults;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, -0x5e9eb5d

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/material3/ScaffoldDefaults;->INSTANCE:Landroidx/compose/material3/ScaffoldDefaults;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getSystemBars(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/2addr v4, v10

    move v10, v4

    goto :goto_20

    :cond_2e
    move-object/from16 v9, p10

    :goto_20
    move v4, v10

    move-wide v10, v11

    move-wide/from16 v32, v20

    move-object v12, v6

    move-object/from16 v36, v9

    move-object v9, v0

    move-object/from16 v0, v36

    :goto_21
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v6, 0x7ffffffe

    and-int v29, v4, v6

    and-int/lit8 v30, v3, 0xe

    const/16 v31, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v12

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v1

    move/from16 v21, v2

    move-wide/from16 v22, v10

    move-wide/from16 v24, v32

    move-object/from16 v26, v0

    move-object/from16 v27, p11

    move-object/from16 v28, v5

    invoke-static/range {v16 .. v31}, Lcom/samsung/sesl/compose/component/ScaffoldKt;->SeslScaffoldImpl-uuOAFiU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    move-object v13, v0

    move-object v6, v1

    move-object v3, v7

    move-object v4, v8

    move-object v1, v9

    move v7, v2

    move-object v2, v12

    :goto_22
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_2f

    new-instance v8, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffold$1;

    move-object v0, v8

    const/4 v12, 0x0

    move-object v5, v6

    move v6, v7

    move-object/from16 v34, v8

    move-wide v7, v10

    move-object v11, v9

    move-wide/from16 v9, v32

    move-object/from16 v35, v11

    move-object v11, v13

    move-object/from16 v13, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffold$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final SeslScaffoldImpl-uuOAFiU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 34

    move/from16 v14, p13

    move/from16 v15, p15

    const/16 v1, 0x10

    const/16 v2, 0x20

    move-object/from16 v5, p12

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x2b51d10d

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v15, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v6, :cond_0

    or-int/lit8 v9, v14, 0x6

    move v10, v9

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v14, 0xe

    if-nez v9, :cond_2

    move-object/from16 v9, p0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    or-int/2addr v10, v14

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v10, v14

    :goto_1
    and-int/lit8 v11, v15, 0x2

    if-eqz v11, :cond_4

    or-int/lit8 v10, v10, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v14, 0x70

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v2

    goto :goto_2

    :cond_5
    move v13, v1

    :goto_2
    or-int/2addr v10, v13

    :goto_3
    and-int/lit8 v13, v15, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v14, 0x380

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v10, v10, v16

    :goto_5
    and-int/lit8 v16, v15, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x800

    goto :goto_6

    :cond_b
    const/16 v18, 0x400

    :goto_6
    or-int v10, v10, v18

    :goto_7
    and-int/2addr v1, v15

    if-eqz v1, :cond_c

    or-int/lit16 v10, v10, 0x6000

    move-object/from16 v0, p4

    goto :goto_9

    :cond_c
    const v18, 0xe000

    and-int v18, v14, v18

    move-object/from16 v0, p4

    if-nez v18, :cond_e

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_8

    :cond_d
    const/16 v19, 0x2000

    :goto_8
    or-int v10, v10, v19

    :cond_e
    :goto_9
    and-int/2addr v2, v15

    if-eqz v2, :cond_f

    const/high16 v19, 0x30000

    or-int v10, v10, v19

    move/from16 v4, p5

    goto :goto_b

    :cond_f
    const/high16 v19, 0x70000

    and-int v19, v14, v19

    move/from16 v4, p5

    if-nez v19, :cond_11

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v20, 0x10000

    :goto_a
    or-int v10, v10, v20

    :cond_11
    :goto_b
    const/high16 v20, 0x380000

    and-int v20, v14, v20

    if-nez v20, :cond_13

    and-int/lit8 v20, v15, 0x40

    move-wide/from16 v3, p6

    if-nez v20, :cond_12

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v10, v10, v21

    goto :goto_d

    :cond_13
    move-wide/from16 v3, p6

    :goto_d
    const/high16 v21, 0x1c00000

    and-int v21, v14, v21

    if-nez v21, :cond_16

    const/16 v0, 0x80

    and-int/lit16 v3, v15, 0x80

    if-nez v3, :cond_14

    move-wide/from16 v3, p8

    invoke-virtual {v5, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_15

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_14
    move-wide/from16 v3, p8

    :cond_15
    const/high16 v0, 0x400000

    :goto_e
    or-int/2addr v10, v0

    goto :goto_f

    :cond_16
    move-wide/from16 v3, p8

    :goto_f
    const/high16 v0, 0xe000000

    and-int/2addr v0, v14

    if-nez v0, :cond_18

    const/16 v0, 0x100

    and-int/lit16 v3, v15, 0x100

    move-object/from16 v0, p10

    if-nez v3, :cond_17

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/high16 v3, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v3, 0x2000000

    :goto_10
    or-int/2addr v10, v3

    goto :goto_11

    :cond_18
    move-object/from16 v0, p10

    :goto_11
    and-int/lit16 v3, v15, 0x200

    if-eqz v3, :cond_1a

    const/high16 v3, 0x30000000

    :goto_12
    or-int/2addr v10, v3

    :cond_19
    const/16 v3, 0x400

    goto :goto_13

    :cond_1a
    const/high16 v3, 0x70000000

    and-int/2addr v3, v14

    if-nez v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/high16 v3, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v3, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v3, v15

    if-eqz v3, :cond_1c

    or-int/lit8 v3, p14, 0x6

    move-object/from16 v4, p11

    goto :goto_15

    :cond_1c
    and-int/lit8 v3, p14, 0xe

    move-object/from16 v4, p11

    if-nez v3, :cond_1e

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x4

    goto :goto_14

    :cond_1d
    const/4 v3, 0x2

    :goto_14
    or-int v3, p14, v3

    goto :goto_15

    :cond_1e
    move/from16 v3, p14

    :goto_15
    const v18, 0x5b6db6db

    and-int v0, v10, v18

    const v4, 0x12492492

    if-ne v0, v4, :cond_20

    and-int/lit8 v0, v3, 0xb

    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v6, p4

    move-wide/from16 v10, p8

    move-object/from16 v13, p10

    move-object v3, v7

    move-object v4, v8

    move-object v1, v9

    move-object v2, v12

    move/from16 v7, p5

    move-wide/from16 v8, p6

    goto/16 :goto_22

    :cond_20
    :goto_16
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v3, -0xe000001

    const v4, -0x1c00001

    const v17, -0x380001

    if-eqz v0, :cond_25

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_17

    :cond_21
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v15, 0x40

    if-eqz v0, :cond_22

    and-int v10, v10, v17

    :cond_22
    const/16 v0, 0x80

    and-int/2addr v0, v15

    if-eqz v0, :cond_23

    and-int/2addr v10, v4

    :cond_23
    const/16 v0, 0x100

    and-int/2addr v0, v15

    if-eqz v0, :cond_24

    and-int/2addr v10, v3

    :cond_24
    move-object/from16 v1, p4

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-object/from16 v0, p10

    move v6, v10

    move-wide/from16 v10, p8

    goto/16 :goto_21

    :cond_25
    :goto_17
    if-eqz v6, :cond_26

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_18

    :cond_26
    move-object v0, v9

    :goto_18
    if-eqz v11, :cond_27

    sget-object v6, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_19

    :cond_27
    move-object v6, v12

    :goto_19
    if-eqz v13, :cond_28

    sget-object v7, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_28
    if-eqz v16, :cond_29

    sget-object v8, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_29
    if-eqz v1, :cond_2a

    sget-object v1, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->INSTANCE:Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/sesl/compose/component/ComposableSingletons$ScaffoldKt;->lambda-8:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_1a

    :cond_2a
    move-object/from16 v1, p4

    :goto_1a
    if-eqz v2, :cond_2b

    sget-object v2, Lcom/samsung/sesl/compose/component/SeslFabPosition;->Companion:Lcom/samsung/sesl/compose/component/SeslFabPosition$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/samsung/sesl/compose/component/SeslFabPosition;->End:I

    goto :goto_1b

    :cond_2b
    move/from16 v2, p5

    :goto_1b
    and-int/lit8 v9, v15, 0x40

    if-eqz v9, :cond_2c

    sget-object v9, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v9

    iget-wide v11, v9, Landroidx/compose/material3/ColorScheme;->background:J

    and-int v10, v10, v17

    :goto_1c
    const/16 v9, 0x80

    goto :goto_1d

    :cond_2c
    move-wide/from16 v11, p6

    goto :goto_1c

    :goto_1d
    and-int/2addr v9, v15

    if-eqz v9, :cond_2d

    invoke-static {v11, v12, v5}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v16

    and-int/2addr v10, v4

    :goto_1e
    const/16 v4, 0x100

    goto :goto_1f

    :cond_2d
    move-wide/from16 v16, p8

    goto :goto_1e

    :goto_1f
    and-int/2addr v4, v15

    if-eqz v4, :cond_2e

    sget-object v4, Lcom/samsung/sesl/compose/component/SeslScaffoldDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslScaffoldDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0x5e9eb5d

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/ScaffoldDefaults;->INSTANCE:Landroidx/compose/material3/ScaffoldDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getSystemBars(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/2addr v3, v10

    move v10, v3

    goto :goto_20

    :cond_2e
    move-object/from16 v4, p10

    :goto_20
    move-object v9, v0

    move-object v0, v4

    move-wide v3, v11

    move-object v12, v6

    move v6, v10

    move-wide/from16 v10, v16

    :goto_21
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v13, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;

    const/16 v16, 0x0

    move-object/from16 p0, v13

    move/from16 p1, v2

    move-object/from16 p2, v12

    move-object/from16 p3, p11

    move-object/from16 p4, v8

    move-object/from16 p5, v1

    move-object/from16 p6, v0

    move-object/from16 p7, v7

    move-object/from16 p8, v16

    invoke-direct/range {p0 .. p8}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$1;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;)V

    move-object/from16 p0, v0

    const v0, 0x5b97b8b8

    invoke-static {v0, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    and-int/lit8 v0, v6, 0xe

    const/high16 v13, 0xc00000

    or-int/2addr v0, v13

    shr-int/lit8 v6, v6, 0xc

    and-int/lit16 v13, v6, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v6, v6, 0x1c00

    or-int v27, v0, v6

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v28, 0x72

    move-object/from16 v16, v9

    move-wide/from16 v18, v3

    move-wide/from16 v20, v10

    move-object/from16 v26, v5

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, p0

    move-object v6, v1

    move-object v1, v9

    move-object/from16 v31, v7

    move v7, v2

    move-object v2, v12

    move-wide/from16 v32, v3

    move-object/from16 v3, v31

    move-object v4, v8

    move-wide/from16 v8, v32

    :goto_22
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v5

    if-eqz v5, :cond_2f

    new-instance v12, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;

    move-object v0, v12

    const/16 v16, 0x0

    move-object/from16 v29, v12

    move-object/from16 v12, v16

    move-object/from16 v30, v5

    move-object v5, v6

    move v6, v7

    move-wide v7, v8

    move-wide v9, v10

    move-object v11, v13

    move-object/from16 v13, p11

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldImpl$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v29

    move-object/from16 v0, v30

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final access$SeslScaffoldLayout-p6Yxe3E(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move/from16 v9, p8

    move-object/from16 v0, p7

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x56fa25ac

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v9, 0xe

    if-nez v1, :cond_1

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_1
    move/from16 v1, p0

    move v3, v9

    :goto_1
    and-int/lit8 v4, v9, 0x70

    const/16 v5, 0x20

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    goto :goto_3

    :cond_3
    move-object/from16 v4, p1

    :goto_3
    and-int/lit16 v6, v9, 0x380

    if-nez v6, :cond_5

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_4

    :cond_4
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    goto :goto_5

    :cond_5
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v8, v9, 0x1c00

    const/16 v10, 0x800

    if-nez v8, :cond_7

    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v10

    goto :goto_6

    :cond_6
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    goto :goto_7

    :cond_7
    move-object/from16 v8, p3

    :goto_7
    const v11, 0xe000

    and-int v12, v9, v11

    move-object/from16 v15, p4

    if-nez v12, :cond_9

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_8

    :cond_8
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v3, v12

    :cond_9
    const/high16 v12, 0x70000

    and-int v14, v9, v12

    if-nez v14, :cond_b

    move-object/from16 v14, p5

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/high16 v16, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v16, 0x10000

    :goto_9
    or-int v3, v3, v16

    goto :goto_a

    :cond_b
    move-object/from16 v14, p5

    :goto_a
    const/high16 v16, 0x380000

    and-int v17, v9, v16

    move-object/from16 v2, p6

    if-nez v17, :cond_d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/high16 v18, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v18, 0x80000

    :goto_b
    or-int v3, v3, v18

    :cond_d
    const v18, 0x2db6db

    and-int v13, v3, v18

    const v11, 0x92492

    if-ne v13, v11, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_16

    :cond_f
    :goto_c
    sget-object v11, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v11, 0x61fcf465

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit8 v11, v3, 0x70

    const/4 v13, 0x1

    const/4 v7, 0x0

    if-ne v11, v5, :cond_10

    move v5, v13

    goto :goto_d

    :cond_10
    move v5, v7

    :goto_d
    and-int/lit16 v11, v3, 0x1c00

    if-ne v11, v10, :cond_11

    move v10, v13

    goto :goto_e

    :cond_11
    move v10, v7

    :goto_e
    or-int/2addr v5, v10

    and-int v10, v3, v12

    const/high16 v11, 0x20000

    if-ne v10, v11, :cond_12

    move v10, v13

    goto :goto_f

    :cond_12
    move v10, v7

    :goto_f
    or-int/2addr v5, v10

    const v10, 0xe000

    and-int/2addr v10, v3

    const/16 v11, 0x4000

    if-ne v10, v11, :cond_13

    move v10, v13

    goto :goto_10

    :cond_13
    move v10, v7

    :goto_10
    or-int/2addr v5, v10

    and-int/lit8 v10, v3, 0xe

    const/4 v11, 0x4

    if-ne v10, v11, :cond_14

    move v10, v13

    goto :goto_11

    :cond_14
    move v10, v7

    :goto_11
    or-int/2addr v5, v10

    and-int v10, v3, v16

    const/high16 v11, 0x100000

    if-ne v10, v11, :cond_15

    move v10, v13

    goto :goto_12

    :cond_15
    move v10, v7

    :goto_12
    or-int/2addr v5, v10

    and-int/lit16 v3, v3, 0x380

    const/16 v10, 0x100

    if-ne v3, v10, :cond_16

    move v3, v13

    goto :goto_13

    :cond_16
    move v3, v7

    :goto_13
    or-int/2addr v3, v5

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_18

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v3, :cond_17

    goto :goto_14

    :cond_17
    move v3, v13

    goto :goto_15

    :cond_18
    :goto_14
    new-instance v5, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;

    move-object v10, v5

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move v3, v13

    move-object/from16 v13, p4

    move/from16 v14, p0

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p2

    invoke-direct/range {v10 .. v17}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_15
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x0

    invoke-static {v10, v5, v0, v7, v3}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_16
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    new-instance v11, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$2;

    const/4 v12, 0x0

    move-object v0, v11

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v12

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/sesl/compose/component/ScaffoldKt$SeslScaffoldLayout$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lcom/samsung/sesl/compose/component/SeslAppBarScrollBehavior;I)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
