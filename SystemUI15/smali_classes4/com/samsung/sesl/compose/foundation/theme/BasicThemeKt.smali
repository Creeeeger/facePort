.class public abstract Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SeslBasicTheme(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;ZLcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 12

    move-object v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v4, p5

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x5fdd2849

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v6, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move-object v8, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v6, 0x70

    if-nez v8, :cond_3

    move-object v8, p1

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x20

    goto :goto_2

    :cond_5
    move v9, v0

    :goto_2
    or-int/2addr v7, v9

    :goto_3
    and-int/lit16 v9, v6, 0x380

    if-nez v9, :cond_8

    and-int/lit8 v9, p7, 0x4

    if-nez v9, :cond_6

    move v9, p2

    invoke-virtual {v4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move v9, p2

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v7, v10

    goto :goto_5

    :cond_8
    move v9, p2

    :goto_5
    and-int/lit16 v10, v6, 0x1c00

    if-nez v10, :cond_b

    and-int/lit8 v10, p7, 0x8

    if-nez v10, :cond_9

    move-object v10, p3

    invoke-virtual {v4, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_6

    :cond_9
    move-object v10, p3

    :cond_a
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v7, v11

    goto :goto_7

    :cond_b
    move-object v10, p3

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v7, v7, 0x6000

    goto :goto_9

    :cond_c
    const v0, 0xe000

    and-int/2addr v0, v6

    if-nez v0, :cond_e

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    goto :goto_8

    :cond_d
    const/16 v0, 0x2000

    :goto_8
    or-int/2addr v7, v0

    :cond_e
    :goto_9
    const v0, 0xb6db

    and-int/2addr v0, v7

    const/16 v7, 0x2492

    if-ne v0, v7, :cond_10

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_a
    move-object v2, v8

    move v3, v9

    goto/16 :goto_11

    :cond_10
    :goto_b
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_e

    :cond_12
    :goto_c
    if-eqz v2, :cond_13

    move-object v8, v7

    :cond_13
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_14

    invoke-static {v4}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    move v9, v0

    :cond_14
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_16

    if-eqz v9, :cond_15

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->seslDarkBasicColorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    goto :goto_d

    :cond_15
    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->seslLightBasicColorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    :goto_d
    move-object v10, v0

    :cond_16
    :goto_e
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v2, 0x6338ffe

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-nez v8, :cond_17

    goto :goto_f

    :cond_17
    new-instance v7, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v7, v2, v8}, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;-><init>(Landroid/view/View;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;)V

    :goto_f
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x6338d16

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-nez v7, :cond_18

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    :cond_18
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->LocalSeslBasicColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    sget-object v11, Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt;->LocalSeslTokenScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    if-nez v1, :cond_1a

    invoke-static {v0}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslDarkTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslDarkTokenScheme;

    goto :goto_10

    :cond_19
    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslLightTokenScheme;

    goto :goto_10

    :cond_1a
    move-object v0, v1

    :goto_10
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    iput-boolean v2, v0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    filled-new-array {v3, v0, v2}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v2, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$1;

    invoke-direct {v2, v5}, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v3, 0x52051c77

    invoke-static {v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v0, v2, v4, v3}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto/16 :goto_a

    :goto_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1b

    new-instance v9, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;

    move-object v0, v9

    move-object v1, p0

    move-object v4, v10

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;ZLcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;Lkotlin/jvm/functions/Function2;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method
