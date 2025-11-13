.class public abstract Lcom/android/settingslib/spa/widget/ui/SpinnerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final ExpandIcon(ZLandroidx/compose/runtime/Composer;I)V
    .locals 22

    move/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x356a52d8

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v1, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v2, v2, 0xb

    if-ne v2, v3, :cond_3

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/16 v5, 0x20

    if-eqz v0, :cond_5

    sget-object v6, Landroidx/compose/material/icons/outlined/ExpandLessKt;->_expandLess:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v6, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v17, 0x0

    const/16 v21, 0x60

    const-string v12, "Outlined.ExpandLess"

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41c00000    # 24.0f

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v6

    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {v5, v4, v9}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-direct {v5, v3, v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    const v5, 0x3fb47ae1    # 1.41f

    invoke-direct {v2, v5, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    const v5, 0x412d47ae    # 10.83f

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    const v4, 0x4092e148    # 4.59f

    const v5, 0x40928f5c    # 4.58f

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41600000    # 14.0f

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-direct {v2, v3, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v8, v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    sput-object v6, Landroidx/compose/material/icons/outlined/ExpandLessKt;->_expandLess:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_3
    move-object v2, v6

    goto/16 :goto_4

    :cond_5
    sget-object v6, Landroidx/compose/material/icons/outlined/ExpandMoreKt;->_expandMore:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    new-instance v6, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/16 v17, 0x0

    const/16 v21, 0x60

    const-string v12, "Outlined.ExpandMore"

    const/high16 v13, 0x41c00000    # 24.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x41c00000    # 24.0f

    const/high16 v16, 0x41c00000    # 24.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v6

    invoke-direct/range {v11 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Black:J

    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    const v9, 0x4184b852    # 16.59f

    const v11, 0x410970a4    # 8.59f

    invoke-direct {v5, v9, v11}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    const v9, 0x4152b852    # 13.17f

    invoke-direct {v5, v4, v9}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    const v5, 0x40ed1eb8    # 7.41f

    invoke-direct {v4, v5, v11}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {v4, v2, v5}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-direct {v4, v2, v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    const v3, -0x404b851f    # -1.41f

    invoke-direct {v2, v3, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v8, v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;Landroidx/compose/ui/graphics/SolidColor;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v6

    sput-object v6, Landroidx/compose/material/icons/outlined/ExpandMoreKt;->_expandMore:Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_3

    :goto_4
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x30

    const/16 v9, 0xc

    move-object v7, v10

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$ExpandIcon$1;

    invoke-direct {v3, v1, v0}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$ExpandIcon$1;-><init>(IZ)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final Spinner(Ljava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "options"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "setId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x5f4e10e

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$1;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$1;-><init>(Ljava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    const/4 v14, 0x0

    new-array v4, v14, [Ljava/lang/Object;

    sget-object v6, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$expanded$2;->INSTANCE:Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$expanded$2;

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/16 v8, 0xc08

    move-object v7, v15

    invoke-static/range {v4 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroidx/compose/runtime/MutableState;

    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget v4, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    sget v5, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    sget v6, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    invoke-static {v12, v4, v5, v6, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget v7, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v10, v15, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_a

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_2

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v8, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_3

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-static {v7, v15, v7, v5}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    int-to-float v4, v14

    new-instance v11, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v11, v6, v4, v6, v4}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sget-object v4, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$1;->INSTANCE:Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$1;

    invoke-static {v12, v14, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v10, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    iget-wide v6, v4, Landroidx/compose/material3/ColorScheme;->primaryContainer:J

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    iget-wide v8, v4, Landroidx/compose/material3/ColorScheme;->onPrimaryContainer:J

    sget-wide v23, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    invoke-static {v4}, Landroidx/compose/material3/ButtonDefaults;->getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object v16

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v23

    invoke-virtual/range {v16 .. v24}, Landroidx/compose/material3/ButtonColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/ButtonColors;

    move-result-object v8

    const v4, -0x6e34d663

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_5

    if-ne v6, v9, :cond_6

    :cond_5
    new-instance v6, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$2$1;

    invoke-direct {v6, v13}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v6, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;

    invoke-direct {v6, v0, v1, v13}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$3;-><init>(Ljava/util/List;Ljava/lang/Integer;Landroidx/compose/runtime/MutableState;)V

    const v7, -0x4f75e8fc

    invoke-static {v7, v6, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x30c00000

    const/16 v21, 0x16c

    move-object/from16 v25, v9

    move-object/from16 v9, v19

    move-object/from16 v26, v10

    move-object/from16 v10, v17

    move-object/from16 p3, v11

    move-object/from16 v27, v12

    move-object/from16 v12, v18

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object v14, v15

    move-object/from16 v28, v15

    move/from16 v15, v20

    move/from16 v16, v21

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const v5, -0x6e34d47b

    move-object/from16 v6, v28

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v5, v17

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_7

    move-object/from16 v7, v25

    if-ne v8, v7, :cond_8

    :cond_7
    new-instance v8, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$4$1;

    invoke-direct {v8, v5}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v18, v8

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v7, v26

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/ColorScheme;

    iget-wide v7, v7, Landroidx/compose/material3/ColorScheme;->secondaryContainer:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    move-object/from16 v10, v27

    invoke-static {v10, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v22

    new-instance v7, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;

    move-object/from16 v8, p3

    invoke-direct {v7, v0, v5, v2, v8}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$2$5;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/layout/PaddingValuesImpl;)V

    const v5, 0x5b8ec6f9

    invoke-static {v5, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    const/16 v16, 0x0

    const/16 v19, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x30

    const/16 v21, 0x7f8

    move-object/from16 v5, v18

    move-object/from16 v28, v6

    move-object/from16 v6, v22

    move-object/from16 v18, v28

    invoke-static/range {v4 .. v21}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    const/4 v4, 0x1

    move-object/from16 v5, v28

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v5, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$3;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$Spinner$3;-><init>(Ljava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;I)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final access$SpinnerText-FNF3uiM(Lcom/android/settingslib/spa/widget/ui/SpinnerOption;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 33

    move-object/from16 v1, p0

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    move-object/from16 v4, p4

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x33c508e3    # -4.9011828E7f

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0xe

    if-nez v6, :cond_2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v5, 0x70

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :goto_3
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-wide/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v5, 0x380

    if-nez v8, :cond_6

    move-wide/from16 v8, p2

    invoke-virtual {v4, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v6, v10

    :goto_5
    and-int/lit16 v10, v6, 0x2db

    const/16 v11, 0x92

    if-ne v10, v11, :cond_a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v7

    move-wide/from16 v31, v8

    goto :goto_9

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_b
    move-object v0, v7

    :goto_7
    if-eqz v2, :cond_c

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    move-wide/from16 v31, v7

    goto :goto_8

    :cond_c
    move-wide/from16 v31, v8

    :goto_8
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;->text:Ljava/lang/String;

    if-nez v2, :cond_e

    :cond_d
    const-string v2, ""

    :cond_e
    sget v10, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    const/4 v8, 0x0

    const/16 v12, 0xb

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget v8, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v3, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/Typography;

    iget-object v3, v3, Landroidx/compose/material3/Typography;->labelLarge:Landroidx/compose/ui/text/TextStyle;

    and-int/lit16 v6, v6, 0x380

    move/from16 v28, v6

    const/16 v29, 0x0

    const v30, 0xfff8

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v6, v2

    move-wide/from16 v8, v31

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-static/range {v6 .. v30}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v2, v0

    :goto_9
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v8, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v3, v31

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt$SpinnerText$1;-><init>(Lcom/android/settingslib/spa/widget/ui/SpinnerOption;Landroidx/compose/ui/Modifier;JII)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
