.class public abstract Landroidx/compose/material3/DividerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final Divider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 11

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object v2, p4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x5d216d69

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v4, v5, 0x6

    move v6, v4

    move-object v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v5, 0x6

    if-nez v4, :cond_2

    move-object v4, p0

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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
    move-object v4, p0

    move v6, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    move v7, p1

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :goto_3
    and-int/lit16 v8, v5, 0x180

    if-nez v8, :cond_8

    and-int/lit8 v8, p6, 0x4

    if-nez v8, :cond_6

    move-wide v8, p2

    invoke-virtual {v2, p2, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move-wide v8, p2

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v6, v10

    goto :goto_5

    :cond_8
    move-wide v8, p2

    :goto_5
    and-int/lit16 v6, v6, 0x93

    const/16 v10, 0x92

    if-ne v6, v10, :cond_a

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v4

    :goto_6
    move-wide v3, v8

    goto/16 :goto_d

    :cond_a
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v4

    move v0, v7

    goto :goto_b

    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_d
    move-object v3, v4

    :goto_9
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    goto :goto_a

    :cond_e
    move v0, v7

    :goto_a
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/DividerTokens;->INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/DividerTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v6

    move-wide v8, v6

    :cond_f
    :goto_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, -0x19d8f137

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    invoke-interface {v1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v1

    div-float v1, v4, v1

    goto :goto_c

    :cond_10
    move v1, v0

    :goto_c
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v8, v9, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move v7, v0

    move-object v1, v3

    goto :goto_6

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_11

    new-instance v9, Landroidx/compose/material3/DividerKt$Divider$1;

    move-object v0, v9

    move v2, v7

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 15

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x47a9d25

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v6, v5, 0x6

    move v7, v6

    move-object v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_2

    move-object v6, p0

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_2
    move-object v6, p0

    move v7, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    const/16 v8, 0x20

    if-eqz v0, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v5, 0x30

    if-nez v9, :cond_3

    move/from16 v9, p1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :goto_3
    and-int/lit16 v10, v5, 0x180

    const/16 v11, 0x100

    if-nez v10, :cond_7

    and-int/lit8 v10, p6, 0x4

    move-wide/from16 v12, p2

    if-nez v10, :cond_6

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v11

    goto :goto_4

    :cond_6
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    goto :goto_5

    :cond_7
    move-wide/from16 v12, p2

    :goto_5
    and-int/lit16 v10, v7, 0x93

    const/16 v14, 0x92

    if-ne v10, v14, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v6

    :goto_6
    move-wide v3, v12

    goto/16 :goto_d

    :cond_9
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_b

    and-int/lit16 v7, v7, -0x381

    :cond_b
    move-object v4, v6

    goto :goto_a

    :cond_c
    :goto_8
    if-eqz v4, :cond_d

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_d
    move-object v4, v6

    :goto_9
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    move v9, v0

    :cond_e
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/tokens/DividerTokens;->INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/tokens/DividerTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v0

    and-int/lit16 v7, v7, -0x381

    move-wide v12, v0

    :cond_f
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v1, v7, 0x70

    const/4 v6, 0x0

    if-ne v1, v8, :cond_10

    move v1, v3

    goto :goto_b

    :cond_10
    move v1, v6

    :goto_b
    and-int/lit16 v8, v7, 0x380

    xor-int/lit16 v8, v8, 0x180

    if-le v8, v11, :cond_11

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_11
    and-int/lit16 v7, v7, 0x180

    if-ne v7, v11, :cond_12

    goto :goto_c

    :cond_12
    move v3, v6

    :cond_13
    :goto_c
    or-int/2addr v1, v3

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_15

    :cond_14
    new-instance v3, Landroidx/compose/material3/DividerKt$HorizontalDivider$1$1;

    invoke-direct {v3, v9, v12, v13}, Landroidx/compose/material3/DividerKt$HorizontalDivider$1$1;-><init>(FJ)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3, v2, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v4

    goto/16 :goto_6

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v8, Landroidx/compose/material3/DividerKt$HorizontalDivider$2;

    move-object v0, v8

    move v2, v9

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$HorizontalDivider$2;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final VerticalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V
    .locals 15

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v2, p4

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x5b7bfc6d

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v6, v5, 0x6

    move v7, v6

    move-object v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_2

    move-object v6, p0

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_2
    move-object v6, p0

    move v7, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    const/16 v8, 0x20

    if-eqz v0, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v5, 0x30

    if-nez v9, :cond_3

    move/from16 v9, p1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v7, v10

    :goto_3
    and-int/lit16 v10, v5, 0x180

    const/16 v11, 0x100

    if-nez v10, :cond_7

    and-int/lit8 v10, p6, 0x4

    move-wide/from16 v12, p2

    if-nez v10, :cond_6

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v11

    goto :goto_4

    :cond_6
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    goto :goto_5

    :cond_7
    move-wide/from16 v12, p2

    :goto_5
    and-int/lit16 v10, v7, 0x93

    const/16 v14, 0x92

    if-ne v10, v14, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v6

    :goto_6
    move-wide v3, v12

    goto/16 :goto_d

    :cond_9
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_b

    and-int/lit16 v7, v7, -0x381

    :cond_b
    move-object v4, v6

    goto :goto_a

    :cond_c
    :goto_8
    if-eqz v4, :cond_d

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_9

    :cond_d
    move-object v4, v6

    :goto_9
    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/DividerDefaults;->Thickness:F

    move v9, v0

    :cond_e
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/tokens/DividerTokens;->INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/material3/tokens/DividerTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v0, v2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v0

    and-int/lit16 v7, v7, -0x381

    move-wide v12, v0

    :cond_f
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxHeight:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v1, v7, 0x70

    const/4 v6, 0x0

    if-ne v1, v8, :cond_10

    move v1, v3

    goto :goto_b

    :cond_10
    move v1, v6

    :goto_b
    and-int/lit16 v8, v7, 0x380

    xor-int/lit16 v8, v8, 0x180

    if-le v8, v11, :cond_11

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_11
    and-int/lit16 v7, v7, 0x180

    if-ne v7, v11, :cond_12

    goto :goto_c

    :cond_12
    move v3, v6

    :cond_13
    :goto_c
    or-int/2addr v1, v3

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_15

    :cond_14
    new-instance v3, Landroidx/compose/material3/DividerKt$VerticalDivider$1$1;

    invoke-direct {v3, v9, v12, v13}, Landroidx/compose/material3/DividerKt$VerticalDivider$1$1;-><init>(FJ)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3, v2, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v4

    goto/16 :goto_6

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v8, Landroidx/compose/material3/DividerKt$VerticalDivider$2;

    move-object v0, v8

    move v2, v9

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/DividerKt$VerticalDivider$2;-><init>(Landroidx/compose/ui/Modifier;FJII)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
