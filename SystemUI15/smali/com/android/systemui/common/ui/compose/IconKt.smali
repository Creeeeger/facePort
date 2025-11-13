.class public abstract Lcom/android/systemui/common/ui/compose/IconKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final Icon-FNF3uiM(Lcom/android/systemui/common/shared/model/Icon;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v2, 0x4

    move-object/from16 v3, p4

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x336418dd    # 5.3108E-8f

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v5, 0xe

    if-nez v4, :cond_2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    or-int/2addr v4, v5

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v5, 0x70

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :goto_3
    and-int/lit16 v7, v5, 0x380

    if-nez v7, :cond_8

    and-int/lit8 v7, p6, 0x4

    if-nez v7, :cond_6

    move-wide/from16 v7, p2

    invoke-virtual {v3, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v7, p2

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    goto :goto_5

    :cond_8
    move-wide/from16 v7, p2

    :goto_5
    and-int/lit16 v9, v4, 0x2db

    const/16 v10, 0x92

    if-ne v9, v10, :cond_a

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v6

    move-wide v14, v7

    goto/16 :goto_e

    :cond_a
    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_e

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_c

    and-int/lit16 v4, v4, -0x381

    :cond_c
    move-object v0, v6

    :cond_d
    move-wide v14, v7

    goto :goto_9

    :cond_e
    :goto_7
    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_8

    :cond_f
    move-object v0, v6

    :goto_8
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_d

    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v6, v2, Landroidx/compose/ui/graphics/Color;->value:J

    and-int/lit16 v4, v4, -0x381

    move-wide v14, v6

    :goto_9
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/common/shared/model/Icon;->getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v2

    const v6, -0x10dbce05

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v13, 0x0

    if-nez v2, :cond_10

    const/4 v2, 0x0

    :goto_a
    move-object v7, v2

    goto :goto_c

    :cond_10
    const v6, 0x3201363b

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    instance-of v6, v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    if-eqz v6, :cond_11

    check-cast v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object v2, v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;->description:Ljava/lang/String;

    goto :goto_b

    :cond_11
    instance-of v6, v2, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    if-eqz v6, :cond_15

    check-cast v2, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    iget v2, v2, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;->res:I

    invoke-static {v2, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_a

    :goto_c
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    instance-of v2, v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    if-eqz v2, :cond_12

    const v2, -0x10dbcdc4

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v2, v2, Lcom/android/systemui/common/shared/model/Icon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v6, v2}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    shl-int/lit8 v2, v4, 0x3

    and-int/lit16 v4, v2, 0x380

    or-int/lit8 v4, v4, 0x8

    and-int/lit16 v2, v2, 0x1c00

    or-int v12, v4, v2

    const/4 v2, 0x0

    move-object v8, v0

    move-wide v9, v14

    move-object v11, v3

    move v4, v13

    move v13, v2

    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_12
    move v2, v13

    instance-of v6, v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    if-eqz v6, :cond_13

    const v6, -0x10dbcd4b

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget v6, v6, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    invoke-static {v6, v3, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    shl-int/lit8 v4, v4, 0x3

    and-int/lit16 v8, v4, 0x380

    or-int/lit8 v8, v8, 0x8

    and-int/lit16 v4, v4, 0x1c00

    or-int v12, v8, v4

    const/4 v13, 0x0

    move-object v8, v0

    move-wide v9, v14

    move-object v11, v3

    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_13
    const v4, -0x10dbcd02

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    move-object v2, v0

    :goto_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_14

    new-instance v8, Lcom/android/systemui/common/ui/compose/IconKt$Icon$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide v3, v14

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/common/ui/compose/IconKt$Icon$1;-><init>(Lcom/android/systemui/common/shared/model/Icon;Landroidx/compose/ui/Modifier;JII)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void

    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
