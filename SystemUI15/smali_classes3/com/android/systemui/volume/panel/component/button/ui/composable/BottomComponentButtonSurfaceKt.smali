.class public abstract Lcom/android/systemui/volume/panel/component/button/ui/composable/BottomComponentButtonSurfaceKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final BottomComponentButtonSurface(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    const/4 v0, 0x2

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x27cf5106

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v15, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, v14, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v3, v14

    :goto_1
    and-int/2addr v0, v15

    if-eqz v0, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v14, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v3, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, v3, 0x5b

    const/16 v4, 0x12

    if-ne v0, v4, :cond_7

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v16, v12

    goto :goto_6

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v0

    goto :goto_5

    :cond_8
    move-object v11, v2

    :goto_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 v0, 0x40

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v1, 0x1c

    int-to-float v1, v1

    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v5, v2, Landroidx/compose/material3/ColorScheme;->surface:J

    const/high16 v2, 0x1c00000

    shl-int/2addr v3, v4

    and-int v16, v3, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x78

    move-wide v2, v5

    move-wide v4, v9

    move/from16 v6, v17

    move-object/from16 v9, p1

    move-object v10, v12

    move-object/from16 v17, v11

    move/from16 v11, v16

    move-object/from16 v16, v12

    move/from16 v12, v18

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v2, v17

    :goto_6
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/android/systemui/volume/panel/component/button/ui/composable/BottomComponentButtonSurfaceKt$BottomComponentButtonSurface$1;

    invoke-direct {v1, v2, v13, v14, v15}, Lcom/android/systemui/volume/panel/component/button/ui/composable/BottomComponentButtonSurfaceKt$BottomComponentButtonSurface$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
