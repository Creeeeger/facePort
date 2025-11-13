.class public abstract Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final IconExt-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v8, p0

    const/16 v0, 0x8

    move-object/from16 v7, p5

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x72ab2226

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v17, v1

    goto :goto_0

    :cond_0
    move-object/from16 v17, p2

    :goto_0
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    move/from16 v6, p6

    and-int/lit16 v3, v6, -0x1c01

    move-wide/from16 v18, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p6

    move-wide/from16 v18, p3

    move v3, v6

    :goto_1
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    instance-of v1, v8, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    const v0, -0x261478e5

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v0, v8

    check-cast v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    and-int/lit16 v15, v3, 0x1ff0

    const/16 v16, 0x0

    iget-object v9, v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object/from16 v10, p1

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    move-object v14, v7

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    move-object v9, v7

    goto/16 :goto_3

    :cond_2
    instance-of v1, v8, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;

    if-eqz v1, :cond_5

    const v1, -0x261477dc

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v9, Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v2, v8

    check-cast v2, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;

    iget v2, v2, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt$IconExt$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt$IconExt$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    invoke-direct {v9, v1}, Lcom/android/compose/ui/graphics/painter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    and-int/lit8 v1, v3, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0x1c00

    or-int v15, v0, v1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    move-object v14, v7

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_5
    instance-of v1, v8, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    if-eqz v1, :cond_6

    const v1, -0x261476ad

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v9, Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    move-object v1, v8

    check-cast v1, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v9, v1}, Lcom/android/compose/ui/graphics/painter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    and-int/lit8 v1, v3, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0x1c00

    or-int v15, v0, v1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, v17

    move-wide/from16 v12, v18

    move-object v14, v7

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_2

    :cond_6
    const v1, -0x261475b9

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v3, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0x380

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0x1c00

    or-int v9, v0, v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move v11, v5

    move-object v5, v7

    move v6, v9

    move-object v9, v7

    move v7, v10

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt$IconExt$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt$IconExt$2;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
