.class public abstract Lcom/android/settingslib/spa/widget/scaffold/SettingsTabKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsTab(Ljava/lang/String;ZFLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v15, p1

    move/from16 v0, p2

    move-object/from16 v14, p3

    move/from16 v13, p5

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onClick"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, p4

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x4c83a2b5    # 6.901495E7f

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v13, 0xe

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v2, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    and-int/lit8 v5, v13, 0x70

    if-nez v5, :cond_3

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :cond_3
    and-int/lit16 v5, v13, 0x380

    if-nez v5, :cond_5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v13, 0x1c00

    if-nez v5, :cond_7

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v2, v5

    :cond_7
    and-int/lit16 v5, v2, 0x16db

    const/16 v6, 0x492

    if-ne v5, v6, :cond_9

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v18, v12

    goto :goto_6

    :cond_9
    :goto_5
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v15, :cond_a

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v5

    :cond_a
    sget-object v3, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v3, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    int-to-float v4, v4

    const/4 v6, 0x6

    int-to-float v7, v6

    invoke-static {v3, v4, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/ColorScheme;

    iget-wide v7, v7, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    iget-wide v9, v4, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-static {v7, v8, v9, v10, v5}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v7

    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v7, v8, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/SettingsTabKt$SettingsTab$1;

    invoke-direct {v3, v1, v5}, Lcom/android/settingslib/spa/widget/scaffold/SettingsTabKt$SettingsTab$1;-><init>(Ljava/lang/String;F)V

    const v5, 0x728d3e68

    invoke-static {v5, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    shr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0xe

    const/high16 v5, 0xc00000

    or-int/2addr v3, v5

    shr-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x70

    or-int v16, v3, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v17, 0x78

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v18, v12

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/TabKt;->Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_6
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/SettingsTabKt$SettingsTab$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/SettingsTabKt$SettingsTab$2;-><init>(Ljava/lang/String;ZFLkotlin/jvm/functions/Function0;I)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
