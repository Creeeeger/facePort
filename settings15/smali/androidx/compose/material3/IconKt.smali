.class public abstract Landroidx/compose/material3/IconKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget v1, Landroidx/compose/material3/tokens/IconButtonTokens;->IconSize:F

    sget v1, Landroidx/compose/material3/tokens/IconButtonTokens;->IconSize:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    return-void
.end method

.method public static final Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v2, p1

    move/from16 v6, p6

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v3, p5

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x7faffaf9

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p7, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    move v7, v5

    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v6, 0x6

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v7, v6

    :goto_1
    and-int/lit8 v0, p7, 0x2

    const/16 v8, 0x20

    if-eqz v0, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v6, 0x30

    if-nez v0, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v7, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v6, 0x180

    if-nez v1, :cond_6

    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v7, v9

    :goto_5
    and-int/lit16 v9, v6, 0xc00

    const/16 v10, 0x800

    if-nez v9, :cond_a

    and-int/lit8 v9, p7, 0x8

    move-wide/from16 v11, p3

    if-nez v9, :cond_9

    invoke-virtual {v3, v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v10

    goto :goto_6

    :cond_9
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v7, v9

    goto :goto_7

    :cond_a
    move-wide/from16 v11, p3

    :goto_7
    and-int/lit16 v9, v7, 0x493

    const/16 v13, 0x492

    if-ne v9, v13, :cond_c

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v1

    goto/16 :goto_11

    :cond_c
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v9, v6, 0x1

    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v9, :cond_f

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_e

    :goto_9
    and-int/lit16 v7, v7, -0x1c01

    :cond_e
    move-wide v14, v11

    goto :goto_b

    :cond_f
    :goto_a
    if-eqz v0, :cond_10

    move-object v1, v13

    :cond_10
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v11, v0, Landroidx/compose/ui/graphics/Color;->value:J

    goto :goto_9

    :goto_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v0, v7, 0x1c00

    xor-int/lit16 v0, v0, 0xc00

    const/4 v12, 0x0

    if-le v0, v10, :cond_11

    invoke-virtual {v3, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    and-int/lit16 v0, v7, 0xc00

    if-ne v0, v10, :cond_13

    :cond_12
    move v0, v4

    goto :goto_c

    :cond_13
    move v0, v12

    :goto_c
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_14

    if-ne v9, v10, :cond_16

    :cond_14
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    :goto_d
    move-object v9, v0

    goto :goto_e

    :cond_15
    new-instance v0, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    const/4 v4, 0x5

    invoke-direct {v0, v4, v14, v15}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    goto :goto_d

    :goto_e
    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v0, v9

    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    const v4, -0x7fd875a0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v2, :cond_1a

    and-int/lit8 v4, v7, 0x70

    if-ne v4, v8, :cond_17

    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    move v4, v12

    :goto_f
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_18

    if-ne v5, v10, :cond_19

    :cond_18
    new-instance v5, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;

    invoke-direct {v5, v2}, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_19
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v12, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    goto :goto_10

    :cond_1a
    move-object v4, v13

    :goto_10
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v5, Landroidx/compose/ui/platform/InspectableValueKt;->NoInspectorInfo:Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v7

    const-wide v9, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    sget-object v13, Landroidx/compose/material3/IconKt;->DefaultIconSizeModifier:Landroidx/compose/ui/Modifier;

    :cond_1c
    invoke-interface {v1, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x16

    move-object/from16 v8, p0

    move v5, v12

    move-object v12, v0

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v0, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v1

    move-wide v11, v14

    :goto_11
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1d

    new-instance v9, Landroidx/compose/material3/IconKt$Icon$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-wide v4, v11

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconKt$Icon$3;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1d
    return-void
.end method

.method public static final Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v6, p6

    const/4 v0, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x8

    move-object/from16 v4, p5

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x79033cc

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p7, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v6, 0x6

    if-nez v5, :cond_2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v5, v5, 0x30

    move-object/from16 v15, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v6, 0x30

    move-object/from16 v15, p1

    if-nez v0, :cond_5

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v5, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v2, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v2, v6, 0x180

    if-nez v2, :cond_6

    move-object/from16 v2, p2

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v5, v7

    :goto_5
    and-int/lit16 v7, v6, 0xc00

    if-nez v7, :cond_b

    and-int/lit8 v7, p7, 0x8

    if-nez v7, :cond_9

    move-wide/from16 v7, p3

    invoke-virtual {v4, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v7, p3

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v5, v9

    goto :goto_7

    :cond_b
    move-wide/from16 v7, p3

    :goto_7
    and-int/lit16 v9, v5, 0x493

    const/16 v10, 0x492

    if-ne v9, v10, :cond_d

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v2

    move-wide/from16 v16, v7

    goto :goto_d

    :cond_d
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_11

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_f

    and-int/lit16 v5, v5, -0x1c01

    :cond_f
    move-object v0, v2

    :cond_10
    :goto_9
    move-wide/from16 v16, v7

    goto :goto_c

    :cond_11
    :goto_a
    if-eqz v0, :cond_12

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_12
    move-object v0, v2

    :goto_b
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_10

    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v7, v2, Landroidx/compose/ui/graphics/Color;->value:J

    and-int/lit16 v5, v5, -0x1c01

    goto :goto_9

    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1, v4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v7

    and-int/lit8 v2, v5, 0x70

    or-int/2addr v2, v3

    and-int/lit16 v3, v5, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v3, v5, 0x1c00

    or-int v13, v2, v3

    const/4 v14, 0x0

    move-object/from16 v8, p1

    move-object v9, v0

    move-wide/from16 v10, v16

    move-object v12, v4

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object v3, v0

    :goto_d
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_13

    new-instance v9, Landroidx/compose/material3/IconKt$Icon$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v4, v16

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconKt$Icon$1;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method
