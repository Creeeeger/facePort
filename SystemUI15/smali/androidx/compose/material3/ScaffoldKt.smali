.class public abstract Landroidx/compose/material3/ScaffoldKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FabSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/material3/ScaffoldKt;->FabSpacing:F

    return-void
.end method

.method public static final Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move/from16 v13, p13

    move/from16 v14, p14

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v6, p12

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x48b06cf1

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v14, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v9, v13, 0x6

    move v10, v9

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v13, 0x6

    if-nez v9, :cond_2

    move-object/from16 v9, p0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v2

    :goto_0
    or-int/2addr v10, v13

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v10, v13

    :goto_1
    and-int/2addr v2, v14

    if-eqz v2, :cond_4

    or-int/lit8 v10, v10, 0x30

    :cond_3
    move-object/from16 v11, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v11, v13, 0x30

    if-nez v11, :cond_3

    move-object/from16 v11, p1

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v1

    goto :goto_2

    :cond_5
    move v12, v0

    :goto_2
    or-int/2addr v10, v12

    :goto_3
    and-int/2addr v3, v14

    if-eqz v3, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v12, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v13, 0x180

    if-nez v12, :cond_6

    move-object/from16 v12, p2

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x100

    goto :goto_4

    :cond_8
    const/16 v15, 0x80

    :goto_4
    or-int/2addr v10, v15

    :goto_5
    and-int/lit8 v15, v14, 0x8

    if-eqz v15, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move-object/from16 v7, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v13, 0xc00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v10, v10, v16

    :goto_7
    and-int/2addr v0, v14

    if-eqz v0, :cond_d

    or-int/lit16 v10, v10, 0x6000

    :cond_c
    move-object/from16 v5, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v5, v13, 0x6000

    if-nez v5, :cond_c

    move-object/from16 v5, p4

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x4000

    goto :goto_8

    :cond_e
    const/16 v17, 0x2000

    :goto_8
    or-int v10, v10, v17

    :goto_9
    and-int/2addr v1, v14

    const/high16 v17, 0x30000

    if-eqz v1, :cond_f

    or-int v10, v10, v17

    move/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v17, v13, v17

    move/from16 v4, p5

    if-nez v17, :cond_11

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v10, v10, v18

    :cond_11
    :goto_b
    const/high16 v18, 0x180000

    and-int v18, v13, v18

    if-nez v18, :cond_13

    and-int/lit8 v18, v14, 0x40

    move-wide/from16 v4, p6

    if-nez v18, :cond_12

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v18, 0x80000

    :goto_c
    or-int v10, v10, v18

    goto :goto_d

    :cond_13
    move-wide/from16 v4, p6

    :goto_d
    const/high16 v18, 0xc00000

    and-int v19, v13, v18

    if-nez v19, :cond_16

    const/16 v4, 0x80

    and-int/lit16 v5, v14, 0x80

    if-nez v5, :cond_14

    move-wide/from16 v4, p8

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_14
    move-wide/from16 v4, p8

    :cond_15
    const/high16 v19, 0x400000

    :goto_e
    or-int v10, v10, v19

    goto :goto_f

    :cond_16
    move-wide/from16 v4, p8

    :goto_f
    const/high16 v19, 0x6000000

    and-int v20, v13, v19

    if-nez v20, :cond_19

    const/16 v5, 0x100

    and-int/lit16 v4, v14, 0x100

    if-nez v4, :cond_17

    move-object/from16 v4, p10

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/high16 v5, 0x4000000

    goto :goto_10

    :cond_17
    move-object/from16 v4, p10

    :cond_18
    const/high16 v5, 0x2000000

    :goto_10
    or-int/2addr v10, v5

    goto :goto_11

    :cond_19
    move-object/from16 v4, p10

    :goto_11
    and-int/lit16 v5, v14, 0x200

    const/high16 v21, 0x30000000

    if-eqz v5, :cond_1b

    or-int v10, v10, v21

    :cond_1a
    move-object/from16 v5, p11

    goto :goto_13

    :cond_1b
    and-int v5, v13, v21

    if-nez v5, :cond_1a

    move-object/from16 v5, p11

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/high16 v21, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v21, 0x10000000

    :goto_12
    or-int v10, v10, v21

    :goto_13
    const v21, 0x12492493

    and-int v4, v10, v21

    const v5, 0x12492492

    if-ne v4, v5, :cond_1e

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_14

    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move-object v4, v7

    move-object v1, v9

    move-object v2, v11

    move-object v3, v12

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    goto/16 :goto_22

    :cond_1e
    :goto_14
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v5, v13, 0x1

    const v21, -0xe000001

    const v22, -0x1c00001

    const v23, -0x380001

    if-eqz v5, :cond_23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_20

    and-int v10, v10, v23

    :cond_20
    const/16 v0, 0x80

    and-int/2addr v0, v14

    if-eqz v0, :cond_21

    and-int v10, v10, v22

    :cond_21
    const/16 v0, 0x100

    and-int/2addr v0, v14

    if-eqz v0, :cond_22

    and-int v10, v10, v21

    :cond_22
    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object v5, v9

    move v15, v10

    move-object v2, v11

    move-object v3, v12

    move-wide/from16 v8, p6

    move-wide/from16 v11, p8

    :goto_15
    move-object/from16 v10, p10

    goto/16 :goto_20

    :cond_23
    :goto_16
    if-eqz v8, :cond_24

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_17

    :cond_24
    move-object v5, v9

    :goto_17
    if-eqz v2, :cond_25

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_18

    :cond_25
    move-object v2, v11

    :goto_18
    if-eqz v3, :cond_26

    sget-object v3, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_19

    :cond_26
    move-object v3, v12

    :goto_19
    if-eqz v15, :cond_27

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :cond_27
    if-eqz v0, :cond_28

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$ScaffoldKt;->lambda-4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_1a

    :cond_28
    move-object/from16 v0, p4

    :goto_1a
    if-eqz v1, :cond_29

    sget-object v1, Landroidx/compose/material3/FabPosition;->Companion:Landroidx/compose/material3/FabPosition$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/FabPosition;->End:I

    goto :goto_1b

    :cond_29
    move/from16 v1, p5

    :goto_1b
    and-int/lit8 v8, v14, 0x40

    if-eqz v8, :cond_2a

    sget-object v8, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    iget-wide v8, v8, Landroidx/compose/material3/ColorScheme;->background:J

    and-int v10, v10, v23

    :goto_1c
    const/16 v11, 0x80

    goto :goto_1d

    :cond_2a
    move-wide/from16 v8, p6

    goto :goto_1c

    :goto_1d
    and-int/2addr v11, v14

    if-eqz v11, :cond_2b

    invoke-static {v8, v9, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v11

    and-int v10, v10, v22

    :goto_1e
    const/16 v15, 0x100

    goto :goto_1f

    :cond_2b
    move-wide/from16 v11, p8

    goto :goto_1e

    :goto_1f
    and-int/2addr v15, v14

    if-eqz v15, :cond_2c

    sget-object v15, Landroidx/compose/material3/ScaffoldDefaults;->INSTANCE:Landroidx/compose/material3/ScaffoldDefaults;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v15, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    invoke-static {v6}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getSystemBars(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v15

    and-int v10, v10, v21

    move-object/from16 v29, v15

    move v15, v10

    move-object/from16 v10, v29

    goto :goto_20

    :cond_2c
    move v15, v10

    goto/16 :goto_15

    :goto_20
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v16, 0xe000000

    and-int v16, v15, v16

    xor-int v4, v16, v19

    const/16 v16, 0x0

    const/high16 v13, 0x4000000

    if-le v4, v13, :cond_2d

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2e

    :cond_2d
    and-int v14, v15, v19

    if-ne v14, v13, :cond_2f

    :cond_2e
    const/4 v13, 0x1

    goto :goto_21

    :cond_2f
    move/from16 v13, v16

    :goto_21
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v13, :cond_30

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v13, :cond_31

    :cond_30
    new-instance v14, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-direct {v14, v10}, Landroidx/compose/material3/internal/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    move-object v13, v14

    check-cast v13, Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    move-wide/from16 p8, v11

    const/high16 v11, 0x4000000

    if-le v4, v11, :cond_32

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    :cond_32
    and-int v4, v15, v19

    if-ne v4, v11, :cond_34

    :cond_33
    const/16 v16, 0x1

    :cond_34
    or-int v4, v14, v16

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_35

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v4, :cond_36

    :cond_35
    new-instance v11, Landroidx/compose/material3/ScaffoldKt$Scaffold$1$1;

    invoke-direct {v11, v13, v10}, Landroidx/compose/material3/ScaffoldKt$Scaffold$1$1;-><init>(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_36
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v11}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v11, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;

    move-object/from16 p0, v11

    move/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, p11

    move-object/from16 p4, v7

    move-object/from16 p5, v0

    move-object/from16 p6, v13

    move-object/from16 p7, v3

    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/ScaffoldKt$Scaffold$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/internal/MutableWindowInsets;Lkotlin/jvm/functions/Function2;)V

    const v12, -0x75f846d6

    invoke-static {v12, v6, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    shr-int/lit8 v11, v15, 0xc

    and-int/lit16 v12, v11, 0x380

    or-int v12, v12, v18

    and-int/lit16 v11, v11, 0x1c00

    or-int v26, v12, v11

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x72

    move-object v15, v4

    move-wide/from16 v17, v8

    move-wide/from16 v19, p8

    move-object/from16 v25, v6

    invoke-static/range {v15 .. v27}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v7

    move-object v12, v10

    move-wide/from16 v10, p8

    move v7, v1

    move-object v1, v5

    move-object v5, v0

    :goto_22
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_37

    new-instance v14, Landroidx/compose/material3/ScaffoldKt$Scaffold$3;

    move-object v0, v14

    move v6, v7

    move-wide v7, v8

    move-wide v9, v10

    move-object v11, v12

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v28, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt$Scaffold$3;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v28

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_37
    return-void
.end method

.method public static final access$ScaffoldLayout-FMILGgc(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move/from16 v8, p8

    move-object/from16 v0, p7

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x3a252186

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v8, 0x6

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
    or-int/2addr v3, v8

    goto :goto_1

    :cond_1
    move/from16 v1, p0

    move v3, v8

    :goto_1
    and-int/lit8 v4, v8, 0x30

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
    and-int/lit16 v6, v8, 0x180

    if-nez v6, :cond_5

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_4

    :cond_4
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    goto :goto_5

    :cond_5
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v9, v8, 0xc00

    const/16 v10, 0x800

    move-object/from16 v15, p3

    if-nez v9, :cond_7

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v10

    goto :goto_6

    :cond_6
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v3, v9

    :cond_7
    and-int/lit16 v9, v8, 0x6000

    const/16 v11, 0x4000

    move-object/from16 v14, p4

    if-nez v9, :cond_9

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v9, v11

    goto :goto_7

    :cond_8
    const/16 v9, 0x2000

    :goto_7
    or-int/2addr v3, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v8

    const/high16 v12, 0x20000

    move-object/from16 v13, p5

    if-nez v9, :cond_b

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v12

    goto :goto_8

    :cond_a
    const/high16 v9, 0x10000

    :goto_8
    or-int/2addr v3, v9

    :cond_b
    const/high16 v9, 0x180000

    and-int/2addr v9, v8

    if-nez v9, :cond_d

    move-object/from16 v9, p6

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_c
    const/high16 v16, 0x80000

    :goto_9
    or-int v3, v3, v16

    goto :goto_a

    :cond_d
    move-object/from16 v9, p6

    :goto_a
    const v16, 0x92493

    and-int v7, v3, v16

    const v2, 0x92492

    if-ne v7, v2, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_13

    :cond_f
    :goto_b
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v2, v3, 0x70

    const/4 v7, 0x1

    if-ne v2, v5, :cond_10

    move v2, v7

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    and-int/lit16 v5, v3, 0x1c00

    if-ne v5, v10, :cond_11

    move v5, v7

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    :goto_d
    or-int/2addr v2, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v3

    if-ne v5, v12, :cond_12

    move v5, v7

    goto :goto_e

    :cond_12
    const/4 v5, 0x0

    :goto_e
    or-int/2addr v2, v5

    const v5, 0xe000

    and-int/2addr v5, v3

    if-ne v5, v11, :cond_13

    move v5, v7

    goto :goto_f

    :cond_13
    const/4 v5, 0x0

    :goto_f
    or-int/2addr v2, v5

    and-int/lit8 v5, v3, 0xe

    const/4 v10, 0x4

    if-ne v5, v10, :cond_14

    move v5, v7

    goto :goto_10

    :cond_14
    const/4 v5, 0x0

    :goto_10
    or-int/2addr v2, v5

    const/high16 v5, 0x380000

    and-int/2addr v5, v3

    const/high16 v10, 0x100000

    if-ne v5, v10, :cond_15

    move v5, v7

    goto :goto_11

    :cond_15
    const/4 v5, 0x0

    :goto_11
    or-int/2addr v2, v5

    and-int/lit16 v3, v3, 0x380

    const/16 v5, 0x100

    if-ne v3, v5, :cond_16

    move v3, v7

    goto :goto_12

    :cond_16
    const/4 v3, 0x0

    :goto_12
    or-int/2addr v2, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_18

    :cond_17
    new-instance v3, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;

    move-object v9, v3

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v5, v7}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_19

    new-instance v10, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$2;

    move-object v0, v10

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$ScaffoldLayout$2;-><init>(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;I)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method
