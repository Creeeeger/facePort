.class public abstract Landroidx/compose/material3/CardKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v6, p5

    move/from16 v7, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v4, p6

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x464f98b1

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v8, v7, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v7, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    or-int/2addr v9, v7

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v7

    :goto_1
    and-int/lit8 v10, v7, 0x30

    if-nez v10, :cond_5

    and-int/lit8 v10, p8, 0x2

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v1

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    :cond_4
    move v11, v0

    :goto_2
    or-int/2addr v9, v11

    goto :goto_3

    :cond_5
    move-object/from16 v10, p1

    :goto_3
    and-int/lit16 v11, v7, 0x180

    if-nez v11, :cond_8

    and-int/lit8 v11, p8, 0x4

    if-nez v11, :cond_6

    move-object/from16 v11, p2

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v11, p2

    :cond_7
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v9, v12

    goto :goto_5

    :cond_8
    move-object/from16 v11, p2

    :goto_5
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_b

    and-int/lit8 v12, p8, 0x8

    if-nez v12, :cond_9

    move-object/from16 v12, p3

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v12, p3

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v9, v13

    goto :goto_7

    :cond_b
    move-object/from16 v12, p3

    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move-object/from16 v13, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v13, v7, 0x6000

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v9, v14

    :goto_9
    and-int/lit8 v1, p8, 0x20

    const/high16 v14, 0x30000

    if-eqz v1, :cond_f

    or-int/2addr v9, v14

    goto :goto_b

    :cond_f
    and-int v1, v7, v14

    if-nez v1, :cond_11

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v1, 0x10000

    :goto_a
    or-int/2addr v9, v1

    :cond_11
    :goto_b
    const v1, 0x12493

    and-int/2addr v1, v9

    const v14, 0x12492

    if-ne v1, v14, :cond_13

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v5, v13

    goto/16 :goto_f

    :cond_13
    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_18

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_15

    and-int/lit8 v9, v9, -0x71

    :cond_15
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_16

    and-int/lit16 v9, v9, -0x381

    :cond_16
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_17

    and-int/lit16 v9, v9, -0x1c01

    :cond_17
    move-object v0, v8

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v5, v13

    goto/16 :goto_e

    :cond_18
    :goto_d
    if-eqz v5, :cond_19

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v1

    :cond_19
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1a

    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v4}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/lit8 v9, v9, -0x71

    move-object v10, v1

    :cond_1a
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_1b

    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material3/CardDefaults;->getDefaultCardColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object v1

    and-int/lit16 v9, v9, -0x381

    move-object v11, v1

    :cond_1b
    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_1c

    sget-object v1, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v15, Landroidx/compose/material3/tokens/FilledCardTokens;->ContainerElevation:F

    sget v16, Landroidx/compose/material3/tokens/FilledCardTokens;->PressedContainerElevation:F

    sget v17, Landroidx/compose/material3/tokens/FilledCardTokens;->FocusContainerElevation:F

    sget v18, Landroidx/compose/material3/tokens/FilledCardTokens;->HoverContainerElevation:F

    sget v19, Landroidx/compose/material3/tokens/FilledCardTokens;->DraggedContainerElevation:F

    sget v20, Landroidx/compose/material3/tokens/FilledCardTokens;->DisabledContainerElevation:F

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Landroidx/compose/material3/CardElevation;

    const/16 v21, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v21}, Landroidx/compose/material3/CardElevation;-><init>(FFFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit16 v2, v9, -0x1c01

    move-object v12, v1

    move v9, v2

    :cond_1c
    if-eqz v0, :cond_17

    const/4 v0, 0x0

    move-object v5, v0

    move-object v0, v8

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    :goto_e
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v10, v2, Landroidx/compose/material3/CardColors;->containerColor:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, -0x691c96f5

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v8, -0x2bcd3c5c

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v12, :cond_1d

    iget v8, v3, Landroidx/compose/material3/CardElevation;->defaultElevation:F

    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v8

    sget-object v12, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v8, v12}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v8, Landroidx/compose/runtime/MutableState;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Dp;

    iget v15, v8, Landroidx/compose/ui/unit/Dp;->value:F

    new-instance v8, Landroidx/compose/material3/CardKt$Card$1;

    invoke-direct {v8, v6}, Landroidx/compose/material3/CardKt$Card$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v12, 0x27956c36

    invoke-static {v12, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    and-int/lit8 v8, v9, 0xe

    const/high16 v12, 0xc00000

    or-int/2addr v8, v12

    and-int/lit8 v12, v9, 0x70

    or-int/2addr v8, v12

    const/high16 v12, 0x380000

    shl-int/lit8 v9, v9, 0x6

    and-int/2addr v9, v12

    or-int v19, v8, v9

    iget-wide v12, v2, Landroidx/compose/material3/CardColors;->contentColor:J

    const/4 v14, 0x0

    const/16 v20, 0x10

    move-object v8, v0

    move-object v9, v1

    move-object/from16 v16, v5

    move-object/from16 v18, v4

    invoke-static/range {v8 .. v20}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_f
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v10, Landroidx/compose/material3/CardKt$Card$2;

    move-object v0, v10

    move-object v4, v12

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/CardKt$Card$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
