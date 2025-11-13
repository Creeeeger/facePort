.class public abstract Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final StickyKeysIndicator(Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1335ce8a

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;->indicatorContent:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, p1, v3, v1}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt;->StickyKeysIndicator(Ljava/util/Map;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeysIndicator$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeysIndicator$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final StickyKeysIndicator(Ljava/util/Map;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x1626686b

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v2, 0x2

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v14, v3

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    :goto_0
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-wide v4, v3, Landroidx/compose/material3/ColorScheme;->inverseSurface:J

    sget-object v3, Landroidx/compose/material3/ShapesKt;->LocalShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/Shapes;

    iget-object v3, v3, Landroidx/compose/material3/Shapes;->medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    const/16 v6, 0x54

    int-to-float v6, v6

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v7, 0x0

    invoke-static {v14, v6, v7, v2}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v6, 0x60

    int-to-float v6, v6

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v6, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeysIndicator$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeysIndicator$2;-><init>(Ljava/util/Map;)V

    const v7, -0x42ba9150

    invoke-static {v7, v15, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/high16 v13, 0xc00000

    const/16 v16, 0x78

    move-object v12, v15

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeysIndicator$3;

    move/from16 v4, p3

    move-object/from16 v5, v17

    invoke-direct {v3, v0, v5, v4, v1}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeysIndicator$3;-><init>(Ljava/util/Map;Landroidx/compose/ui/Modifier;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public static final access$StickyKeyText-GLLOLKI(Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move/from16 v2, p1

    move/from16 v4, p4

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x56acdba2

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v4, 0x6

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v4, 0xe

    move-object/from16 v12, p0

    if-nez v5, :cond_2

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v5, v4

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v4, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

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
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v4, 0x380

    if-nez v1, :cond_6

    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_4

    :cond_8
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :goto_5
    and-int/lit16 v6, v5, 0x2db

    const/16 v7, 0x92

    if-ne v6, v7, :cond_a

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, v1

    goto/16 :goto_c

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_b
    move-object v0, v1

    :goto_7
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->getDisplayedText()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_c

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    :goto_8
    move-object/from16 v25, v6

    goto :goto_9

    :cond_c
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_8

    :goto_9
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/Typography;

    move-result-object v6

    iget-object v7, v6, Landroidx/compose/material3/Typography;->bodyMedium:Landroidx/compose/ui/text/TextStyle;

    const/4 v6, 0x0

    if-eqz v2, :cond_d

    const v8, -0x3d158552

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    iget-wide v8, v8, Landroidx/compose/material3/ColorScheme;->inverseOnSurface:J

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    move-wide/from16 v30, v8

    goto :goto_b

    :cond_d
    const v8, -0x3d158502

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v3}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v8

    iget-wide v8, v8, Landroidx/compose/material3/ColorScheme;->outlineVariant:J

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_a

    :goto_b
    shr-int/lit8 v5, v5, 0x3

    and-int/lit8 v27, v5, 0x70

    const/16 v28, 0x0

    const v29, 0xffd8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v5, v1

    move-object v6, v0

    move-object v1, v7

    move-wide/from16 v7, v30

    move-object/from16 v12, v25

    move-object/from16 v25, v1

    move-object/from16 v26, v3

    invoke-static/range {v5 .. v29}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v5, v0

    :goto_c
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v7, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeyText$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v5

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$StickyKeyText$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;ZLandroidx/compose/ui/Modifier;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final createStickyKeyIndicatorView(Landroid/content/Context;Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;)Landroidx/compose/ui/platform/ComposeView;
    .locals 7

    new-instance v6, Landroidx/compose/ui/platform/ComposeView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$createStickyKeyIndicatorView$1$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/stickykeys/ui/view/StickyKeysIndicatorKt$createStickyKeyIndicatorView$1$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/ui/viewmodel/StickyKeysIndicatorViewModel;)V

    new-instance p1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v0, 0x69753ec4

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v6, p1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-object v6
.end method
