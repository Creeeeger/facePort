.class public abstract Lcom/android/systemui/media/mediaoutput/compose/widget/ImageExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final ImageExt(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v10, p0

    move/from16 v11, p4

    move-object/from16 v12, p3

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x778abb1d

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p2

    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    instance-of v0, v10, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    const v0, -0x7c8c9cc2

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v0, v10

    check-cast v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    and-int/lit16 v1, v11, 0x3f0

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    move-object/from16 v15, p1

    invoke-static {v0, v15, v13, v12, v1}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_1

    :cond_1
    move-object/from16 v15, p1

    instance-of v0, v10, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    const v0, -0x7c8c9bd4

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v0, Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object v3, v10

    check-cast v3, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;

    iget v3, v3, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;->resId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/widget/ImageExtKt$ImageExt$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ImageExtKt$ImageExt$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void

    :cond_3
    invoke-direct {v0, v2}, Lcom/android/compose/ui/graphics/painter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    and-int/lit8 v2, v11, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v11, 0x380

    or-int v8, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x78

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v7, v12

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_4
    instance-of v0, v10, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    if-eqz v0, :cond_5

    const v0, -0x7c8c9ac0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v0, Lcom/android/compose/ui/graphics/painter/DrawablePainter;

    move-object v2, v10

    check-cast v2, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2}, Lcom/android/compose/ui/graphics/painter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    and-int/lit8 v2, v11, 0x70

    or-int/2addr v1, v2

    and-int/lit16 v2, v11, 0x380

    or-int v8, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x78

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v7, v12

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_5
    const v0, -0x7c8c99e7

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v11, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v11, 0x380

    or-int v8, v0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x78

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v7, v12

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/widget/ImageExtKt$ImageExt$2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ImageExtKt$ImageExt$2;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
