.class public abstract Lcom/android/compose/theme/PlatformThemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final PlatformTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x2

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x30ebb4ad

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v1, 0xe

    if-nez v4, :cond_2

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    move/from16 v4, p0

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move/from16 v4, p0

    :cond_1
    move v5, v3

    :goto_0
    or-int/2addr v5, v1

    goto :goto_1

    :cond_2
    move/from16 v4, p0

    move v5, v1

    :goto_1
    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v1, 0x70

    if-nez v3, :cond_5

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v5, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v5, 0x5b

    const/16 v5, 0x12

    if-ne v3, v5, :cond_7

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v0

    move-object v0, v11

    goto/16 :goto_e

    :cond_7
    :goto_4
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_a

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v3, v2, 0x1

    :cond_9
    move v3, v4

    goto :goto_6

    :cond_a
    :goto_5
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_9

    invoke-static {v11}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;)Z

    move-result v3

    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v3, :cond_b

    invoke-static {v5}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicDarkColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    goto :goto_7

    :cond_b
    invoke-static {v5}, Landroidx/compose/material3/DynamicTonalPaletteKt;->dynamicLightColorScheme(Landroid/content/Context;)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    :goto_7
    new-instance v7, Lcom/android/compose/theme/AndroidColorScheme;

    invoke-direct {v7, v5}, Lcom/android/compose/theme/AndroidColorScheme;-><init>(Landroid/content/Context;)V

    const v8, -0xfa1f53d

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v8, :cond_c

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v8, :cond_d

    :cond_c
    sget-object v8, Lcom/android/compose/theme/typography/TypefaceNames;->Companion:Lcom/android/compose/theme/typography/TypefaceNames$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/compose/theme/typography/TypefaceNames$Companion;->get(Landroid/content/Context;)Lcom/android/compose/theme/typography/TypefaceNames;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Lcom/android/compose/theme/typography/TypefaceNames;

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v8, -0xfa1f4ef

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_f

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v8, :cond_e

    goto :goto_8

    :cond_e
    move/from16 p2, v3

    move-object/from16 v31, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v0, v11

    goto :goto_9

    :cond_f
    :goto_8
    new-instance v8, Lcom/android/compose/theme/typography/TypographyTokens;

    new-instance v10, Lcom/android/compose/theme/typography/TypeScaleTokens;

    new-instance v12, Lcom/android/compose/theme/typography/TypefaceTokens;

    invoke-direct {v12, v9}, Lcom/android/compose/theme/typography/TypefaceTokens;-><init>(Lcom/android/compose/theme/typography/TypefaceNames;)V

    invoke-direct {v10, v12}, Lcom/android/compose/theme/typography/TypeScaleTokens;-><init>(Lcom/android/compose/theme/typography/TypefaceTokens;)V

    invoke-direct {v8, v10}, Lcom/android/compose/theme/typography/TypographyTokens;-><init>(Lcom/android/compose/theme/typography/TypeScaleTokens;)V

    new-instance v12, Landroidx/compose/material3/Typography;

    iget-object v9, v8, Lcom/android/compose/theme/typography/TypographyTokens;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    iget-object v10, v8, Lcom/android/compose/theme/typography/TypographyTokens;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    iget-object v14, v8, Lcom/android/compose/theme/typography/TypographyTokens;->displayLarge:Landroidx/compose/ui/text/TextStyle;

    iget-object v15, v8, Lcom/android/compose/theme/typography/TypographyTokens;->displayMedium:Landroidx/compose/ui/text/TextStyle;

    iget-object v13, v8, Lcom/android/compose/theme/typography/TypographyTokens;->displaySmall:Landroidx/compose/ui/text/TextStyle;

    iget-object v5, v8, Lcom/android/compose/theme/typography/TypographyTokens;->headlineLarge:Landroidx/compose/ui/text/TextStyle;

    move/from16 p2, v3

    iget-object v3, v8, Lcom/android/compose/theme/typography/TypographyTokens;->headlineMedium:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, v8, Lcom/android/compose/theme/typography/TypographyTokens;->headlineSmall:Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v8, Lcom/android/compose/theme/typography/TypographyTokens;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v29, v6

    iget-object v6, v8, Lcom/android/compose/theme/typography/TypographyTokens;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    iget-object v0, v8, Lcom/android/compose/theme/typography/TypographyTokens;->titleSmall:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v30, v7

    iget-object v7, v8, Lcom/android/compose/theme/typography/TypographyTokens;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v31, v4

    iget-object v4, v8, Lcom/android/compose/theme/typography/TypographyTokens;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v11

    iget-object v11, v8, Lcom/android/compose/theme/typography/TypographyTokens;->labelMedium:Landroidx/compose/ui/text/TextStyle;

    iget-object v8, v8, Lcom/android/compose/theme/typography/TypographyTokens;->labelSmall:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v0

    move-object/from16 v23, v7

    move-object/from16 v24, v4

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v8

    invoke-direct/range {v13 .. v28}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_9
    move-object v6, v12

    check-cast v6, Landroidx/compose/material3/Typography;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lcom/android/compose/windowsizeclass/WindowSizeClassKt;->LocalWindowSizeClass:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const v1, -0x29dc3a88

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    move-object/from16 v2, v31

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v3, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    invoke-virtual {v3, v2}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeCurrentWindowMetrics(Landroid/content/Context;)Landroidx/window/layout/WindowMetrics;

    move-result-object v2

    iget-object v2, v2, Landroidx/window/layout/WindowMetrics;->_bounds:Landroidx/window/core/Bounds;

    invoke-virtual {v2}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeRect(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v1

    sget-object v3, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowSizeClass$Companion;

    sget-object v4, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->DefaultSizeClasses:Ljava/util/Set;

    sget-object v5, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->DefaultSizeClasses:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v3

    const/4 v7, 0x0

    int-to-float v8, v7

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v3, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    const-string v9, "Width must not be negative"

    if-ltz v7, :cond_1a

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    const-string v10, "Must support at least one size class"

    if-eqz v7, :cond_19

    sget-object v7, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->AllSizeClassList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v12, v11, :cond_12

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    iget v14, v14, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->value:I

    invoke-static {v14}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->box-impl(I)Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    sget-object v13, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Landroidx/compose/material3/windowsizeclass/WindowWidthSizeClass$Companion;->breakpoint-fhkHA5s(I)F

    move-result v13

    invoke-static {v3, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-ltz v13, :cond_10

    move v13, v14

    goto :goto_b

    :cond_10
    move v13, v14

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_12
    :goto_b
    sget-object v3, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass$Companion;

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v1, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_18

    move-object v2, v5

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17

    sget v2, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->Expanded:I

    sget-object v3, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->AllSizeClassList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v7, v2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v4, :cond_15

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;

    iget v8, v8, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->value:I

    invoke-static {v8}, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->box-impl(I)Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    sget-object v7, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass;->Companion:Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/compose/material3/windowsizeclass/WindowHeightSizeClass$Companion;->breakpoint-sr04XMo(I)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_13

    move v7, v8

    goto :goto_d

    :cond_13
    move v7, v8

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_15
    :goto_d
    new-instance v1, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;

    const/4 v2, 0x0

    invoke-direct {v1, v13, v7, v2}, Landroidx/compose/material3/windowsizeclass/WindowSizeClass;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v2, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;

    move-object/from16 v3, p1

    move-object/from16 v4, v30

    invoke-direct {v2, v4, v1, v3}, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;-><init>(Lcom/android/compose/theme/AndroidColorScheme;Landroidx/compose/material3/windowsizeclass/WindowSizeClass;Lkotlin/jvm/functions/Function2;)V

    const v1, 0x44ae2f59

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/16 v9, 0xc00

    move-object/from16 v4, v29

    move-object v8, v0

    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move/from16 v4, p2

    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$2;

    move/from16 v2, p3

    move/from16 v5, p4

    invoke-direct {v1, v4, v3, v2, v5}, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$2;-><init>(ZLkotlin/jvm/functions/Function2;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
