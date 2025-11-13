.class public abstract Lcom/android/settingslib/spa/widget/card/SettingsCardKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final CardHeader-3IgeMak(Landroidx/compose/ui/graphics/vector/ImageVector;JLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v4, 0x4

    move-object/from16 v6, p4

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x3ec40f4f

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, p6, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v5, 0xe

    if-nez v8, :cond_2

    invoke-virtual {v6, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    or-int/2addr v8, v5

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v5, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v6, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v8, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v4, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v5, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p3

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v8, v9

    :goto_5
    and-int/lit16 v9, v8, 0x2db

    const/16 v10, 0x92

    if-ne v9, v10, :cond_a

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_a
    :goto_6
    const/4 v9, 0x0

    if-eqz v0, :cond_b

    move-object v4, v9

    :cond_b
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x3b53188a

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-nez v1, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    sget v10, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->buttonPaddingVertical:F

    invoke-static {v0, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v11, v12, v6, v0}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget v11, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v6, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v14, v6, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-eqz v14, :cond_13

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_e

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_7
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v9, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_f

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    :cond_f
    invoke-static {v11, v6, v11, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_10
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v8, 0x7e

    invoke-static {p0, v2, v3, v6, v0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->CardIcon-RPmYEkk(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/runtime/Composer;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_12

    new-instance v9, Landroidx/compose/foundation/layout/LayoutWeightElement;

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    invoke-direct {v9, v0, v7}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    shr-int/lit8 v0, v8, 0x6

    and-int/lit8 v0, v0, 0xe

    invoke-static {v4, v6, v0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->DismissButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v8, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$CardHeader$2;

    move-object v0, v8

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$CardHeader$2;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;JLkotlin/jvm/functions/Function0;II)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid weight 1.0; must be greater than zero"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v9
.end method

.method public static final CardIcon-RPmYEkk(Landroidx/compose/ui/graphics/vector/ImageVector;JLandroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x539bc36f

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p3, p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_5
    :goto_3
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p0, :cond_7

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconSize:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v1, 0x70ac6bd4

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const-wide/16 v3, 0x10

    cmp-long v1, p1, v3

    if-eqz v1, :cond_6

    move-wide v3, p1

    goto :goto_4

    :cond_6
    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-wide v3, v1, Landroidx/compose/material3/ColorScheme;->primary:J

    :goto_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v6, v0, 0x1b0

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :cond_7
    :goto_5
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$CardIcon$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$CardIcon$2;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;JI)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final DismissButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5773a2b

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v0, v0, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-nez p0, :cond_5

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$DismissButton$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$DismissButton$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/ColorScheme;

    iget-wide v2, v0, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$DismissButton$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$DismissButton$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v4, 0x17edb846

    invoke-static {v4, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/high16 v11, 0xc00000

    const/16 v12, 0x79

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$DismissButton$3;

    invoke-direct {v0, p2, p0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$DismissButton$3;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final SettingsCard(Lcom/android/settingslib/spa/widget/card/CardModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x21f5631f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCard$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCard$2;-><init>(Lcom/android/settingslib/spa/widget/card/CardModel;)V

    const v1, -0x325749d1

    invoke-static {v1, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->SettingsCard(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCard$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCard$3;-><init>(Lcom/android/settingslib/spa/widget/card/CardModel;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final SettingsCard(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x11d31781

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Transparent:J

    const/4 v1, 0x6

    invoke-static {v3, v4, p1, v1}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CardColors;

    move-result-object v3

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    sget v4, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    sget v5, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    shl-int/lit8 v0, v0, 0xf

    const/high16 v4, 0x70000

    and-int/2addr v0, v4

    or-int/lit8 v8, v0, 0x36

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v9, 0x18

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCard$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCard$1;-><init>(Lkotlin/jvm/functions/Function3;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final SettingsCardContent-3J-VO9M(JLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    move-object v9, p2

    const/4 v0, 0x2

    const-string v1, "content"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x22251c4d

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v1, 0x1

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v3, p4, 0x6

    move v5, v3

    move-wide v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, p4, 0xe

    if-nez v3, :cond_2

    move-wide v3, p0

    invoke-virtual {v10, p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int v5, p4, v5

    goto :goto_1

    :cond_2
    move-wide v3, p0

    move/from16 v5, p4

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, p4, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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
    and-int/lit8 v0, v5, 0x5b

    const/16 v6, 0x12

    if-ne v0, v6, :cond_7

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide v1, v3

    goto :goto_7

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide v11, v2

    goto :goto_5

    :cond_8
    move-wide v11, v3

    :goto_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const v0, 0x16c1d3d1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const-wide/16 v3, 0x10

    cmp-long v0, v11, v3

    if-eqz v0, :cond_9

    move-wide v3, v11

    goto :goto_6

    :cond_9
    sget-object v0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/ColorScheme;

    iget-wide v3, v0, Landroidx/compose/material3/ColorScheme;->surface:J

    :goto_6
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v3, v4, v10, v0}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CardColors;

    move-result-object v3

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    int-to-float v4, v1

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    shl-int/lit8 v1, v5, 0xc

    const/high16 v4, 0x70000

    and-int/2addr v1, v4

    or-int/lit8 v7, v1, 0x36

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x18

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    move-object v6, v10

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-wide v1, v11

    :goto_7
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v7, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardContent$2;

    move-object v0, v7

    move-object v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardContent$2;-><init>(JLkotlin/jvm/functions/Function3;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final SettingsCardImpl(Lcom/android/settingslib/spa/widget/card/CardModel;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x671f10df

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->isVisible:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1;-><init>(Lcom/android/settingslib/spa/widget/card/CardModel;)V

    const v2, -0xbc3c2f9

    invoke-static {v2, v0, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v8, 0x30000

    const/16 v9, 0x1e

    move-object v7, p1

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$2;-><init>(Lcom/android/settingslib/spa/widget/card/CardModel;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final access$Button-RPmYEkk(Lcom/android/settingslib/spa/widget/card/CardButton;JLandroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x5166074e

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v3, 0xe

    if-nez v4, :cond_1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v5, v3, 0x70

    if-nez v5, :cond_3

    invoke-virtual {v15, v1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    and-int/lit8 v4, v4, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v18, v15

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lcom/android/settingslib/spa/widget/card/CardButton;->onClick:Lkotlin/jvm/functions/Function0;

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iget-object v6, v0, Lcom/android/settingslib/spa/widget/card/CardButton;->contentDescription:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settingslib/spa/framework/compose/ModifierExtKt;->contentDescription(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Button$1;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Button$1;-><init>(Lcom/android/settingslib/spa/widget/card/CardButton;J)V

    const v7, -0x35ad1ef5

    invoke-static {v7, v6, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/high16 v16, 0x30000000

    const/16 v17, 0x1fc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v14, v15

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Button$2;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Button$2;-><init>(Lcom/android/settingslib/spa/widget/card/CardButton;JI)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final access$Buttons-RPmYEkk(Ljava/util/List;JLandroidx/compose/runtime/Composer;I)V
    .locals 11

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0xb09c7c9

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const v0, 0x2d7572a8

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingTiny:F

    invoke-static {}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw()Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Buttons$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Buttons$1;-><init>(Ljava/util/List;J)V

    const v3, -0x6b996649

    invoke-static {v3, v2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const v8, 0x180036

    const/16 v9, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowLayoutKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;IILandroidx/compose/foundation/layout/FlowRowOverflow;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_0

    :cond_0
    const v0, 0x2d757414

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {p3, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Buttons$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$Buttons$2;-><init>(Ljava/util/List;JI)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method
