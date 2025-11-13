.class public abstract Landroidx/compose/material3/RadioButtonKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RadioButtonDotSize:F

.field public static final RadioButtonPadding:F

.field public static final RadioStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/RadioButtonKt;->RadioButtonPadding:F

    const/16 v1, 0xc

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/RadioButtonKt;->RadioButtonDotSize:F

    sput v0, Landroidx/compose/material3/RadioButtonKt;->RadioStrokeWidth:F

    return-void
.end method

.method public static final RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p7

    const/16 v0, 0x20

    const/4 v1, 0x4

    const/16 v2, 0x10

    const/16 v3, 0x30

    const/4 v4, 0x6

    move-object/from16 v6, p6

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x185a72e8

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v10, p8, 0x1

    const/4 v15, 0x2

    if-eqz v10, :cond_0

    or-int/lit8 v10, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v9, 0x6

    if-nez v10, :cond_2

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v15

    :goto_0
    or-int/2addr v10, v9

    goto :goto_1

    :cond_2
    move v10, v9

    :goto_1
    and-int/lit8 v11, p8, 0x2

    if-eqz v11, :cond_3

    or-int/2addr v10, v3

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v9, 0x30

    if-nez v11, :cond_5

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v0

    goto :goto_2

    :cond_4
    move v11, v2

    :goto_2
    or-int/2addr v10, v11

    :cond_5
    :goto_3
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v9, 0x180

    if-nez v11, :cond_6

    move-object/from16 v11, p2

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v10, v12

    :goto_5
    and-int/lit8 v12, p8, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_9

    move/from16 v13, p3

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v10, v14

    :goto_7
    and-int/lit16 v14, v9, 0x6000

    if-nez v14, :cond_e

    and-int/lit8 v14, p8, 0x10

    if-nez v14, :cond_c

    move-object/from16 v14, p4

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v14, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v10, v10, v16

    goto :goto_9

    :cond_e
    move-object/from16 v14, p4

    :goto_9
    and-int/lit8 v0, p8, 0x20

    const/high16 v16, 0x30000

    if-eqz v0, :cond_f

    or-int v10, v10, v16

    move-object/from16 v3, p5

    goto :goto_b

    :cond_f
    and-int v16, v9, v16

    move-object/from16 v3, p5

    if-nez v16, :cond_11

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v10, v10, v17

    :cond_11
    :goto_b
    const v17, 0x12493

    and-int v10, v10, v17

    const v4, 0x12492

    if-ne v10, v4, :cond_13

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v4, v13

    move-object v5, v14

    move-object/from16 v28, v6

    move-object v6, v3

    move-object v3, v11

    move-object/from16 v11, v28

    goto/16 :goto_16

    :cond_13
    :goto_c
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v9, 0x1

    sget-object v18, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v4, :cond_15

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_e

    :cond_14
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v20, v3

    move-object v5, v11

    :goto_d
    move/from16 v19, v13

    move-object v4, v14

    goto :goto_11

    :cond_15
    :goto_e
    if-eqz v1, :cond_16

    move-object/from16 v11, v18

    :cond_16
    if-eqz v12, :cond_17

    move v13, v5

    :cond_17
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_19

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-object v2, v1, Landroidx/compose/material3/ColorScheme;->defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

    if-nez v2, :cond_18

    new-instance v2, Landroidx/compose/material3/RadioButtonColors;

    sget v4, Landroidx/compose/material3/tokens/RadioButtonTokens;->IconSize:F

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v20

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-object/from16 p2, v11

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v5, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v24

    invoke-static {v1, v4}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v26

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v27}, Landroidx/compose/material3/RadioButtonColors;-><init>(JJJJ)V

    iput-object v2, v1, Landroidx/compose/material3/ColorScheme;->defaultRadioButtonColorsCached:Landroidx/compose/material3/RadioButtonColors;

    goto :goto_f

    :cond_18
    move-object/from16 p2, v11

    :goto_f
    move-object v14, v2

    goto :goto_10

    :cond_19
    move-object/from16 p2, v11

    :goto_10
    move-object/from16 v5, p2

    if-eqz v0, :cond_1a

    move/from16 v19, v13

    move-object v4, v14

    const/16 v20, 0x0

    goto :goto_11

    :cond_1a
    move-object/from16 v20, v3

    goto :goto_d

    :goto_11
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v3, 0x0

    if-eqz v7, :cond_1b

    sget v0, Landroidx/compose/material3/RadioButtonKt;->RadioButtonDotSize:F

    int-to-float v1, v15

    div-float/2addr v0, v1

    goto :goto_12

    :cond_1b
    int-to-float v0, v3

    :goto_12
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v10, 0x6

    invoke-static {v1, v3, v2, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    const/16 v2, 0x30

    invoke-static {v0, v11, v6, v2}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v19, :cond_1c

    if-eqz v7, :cond_1c

    iget-wide v10, v4, Landroidx/compose/material3/RadioButtonColors;->selectedColor:J

    goto :goto_13

    :cond_1c
    if-eqz v19, :cond_1d

    if-nez v7, :cond_1d

    iget-wide v10, v4, Landroidx/compose/material3/RadioButtonColors;->unselectedColor:J

    goto :goto_13

    :cond_1d
    if-nez v19, :cond_1e

    if-eqz v7, :cond_1e

    iget-wide v10, v4, Landroidx/compose/material3/RadioButtonColors;->disabledSelectedColor:J

    goto :goto_13

    :cond_1e
    iget-wide v10, v4, Landroidx/compose/material3/RadioButtonColors;->disabledUnselectedColor:J

    :goto_13
    if-eqz v19, :cond_1f

    const v0, 0x14d95083

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x0

    const/4 v12, 0x6

    invoke-static {v1, v3, v0, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v12

    const/16 v0, 0x30

    const/16 v16, 0xc

    const/4 v13, 0x0

    move-object v14, v6

    move v1, v15

    move v15, v0

    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_14

    :cond_1f
    move v1, v15

    const v0, 0x14dae1b2

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v0, v10, v11}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v0, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_14
    const v10, 0x4f1a04e0

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v8, :cond_20

    sget v10, Landroidx/compose/material3/tokens/RadioButtonTokens;->StateLayerSize:F

    int-to-float v1, v1

    div-float v11, v10, v1

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v15, 0x36

    const/16 v16, 0x4

    move-object v14, v6

    invoke-static/range {v10 .. v16}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v10

    new-instance v11, Landroidx/compose/ui/semantics/Role;

    const/4 v1, 0x3

    invoke-direct {v11, v1}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    move-object v12, v0

    move-object/from16 v0, v18

    move/from16 v1, p0

    move-object v13, v2

    move-object/from16 v2, v20

    move v14, v3

    move-object v3, v10

    move-object v10, v4

    move/from16 v4, v19

    move-object v15, v5

    move-object v5, v11

    move-object v11, v6

    move-object/from16 v6, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_15

    :cond_20
    move-object v12, v0

    move-object v13, v2

    move v14, v3

    move-object v10, v4

    move-object v15, v5

    move-object v11, v6

    move-object/from16 v0, v18

    :goto_15
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v8, :cond_21

    sget-object v1, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v18, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    :cond_21
    move-object/from16 v1, v18

    invoke-interface {v15, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Landroidx/compose/material3/RadioButtonKt;->RadioButtonPadding:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Landroidx/compose/material3/tokens/RadioButtonTokens;->IconSize:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->requiredSize-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_22

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_23

    :cond_22
    new-instance v2, Landroidx/compose/material3/RadioButtonKt$RadioButton$1$1;

    invoke-direct {v2, v12, v13}, Landroidx/compose/material3/RadioButtonKt$RadioButton$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2, v11, v14}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v5, v10

    move-object v3, v15

    move/from16 v4, v19

    move-object/from16 v6, v20

    :goto_16
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_24

    new-instance v11, Landroidx/compose/material3/RadioButtonKt$RadioButton$2;

    move-object v0, v11

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/RadioButtonKt$RadioButton$2;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method
