.class public abstract Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static _keyboardCommandKey:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public static final getKeyboardCommandKey()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 32

    const v3, -0x40370a3d    # -1.57f

    const/high16 v4, 0x40600000    # 3.5f

    const v6, 0x40923d71    # 4.57f

    const/high16 v7, -0x3f800000    # -4.0f

    const/high16 v9, 0x3fc00000    # 1.5f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v15, 0x418c0000    # 17.5f

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v8, 0x40d00000    # 6.5f

    sget-object v16, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt;->_keyboardCommandKey:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v16, :cond_0

    return-object v16

    :cond_0
    new-instance v16, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v17, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v18, "Filled.KeyboardCommandKey"

    const/high16 v19, 0x41c00000    # 24.0f

    const/high16 v20, 0x41c00000    # 24.0f

    const/high16 v21, 0x41c00000    # 24.0f

    const/high16 v22, 0x41c00000    # 24.0f

    const-wide/16 v23, 0x0

    const/16 v27, 0x60

    const/16 v28, 0x0

    move-object/from16 v17, v16

    invoke-direct/range {v17 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v17, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Lkotlin/collections/EmptyList;

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v18, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    const/4 v5, 0x0

    invoke-direct {v13, v1, v2, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v24, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v1, v15, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v28, 0x41600000    # 14.0f

    const v29, 0x40923d71    # 4.57f

    const/high16 v30, 0x41600000    # 14.0f

    const/high16 v31, 0x40d00000    # 6.5f

    const v26, 0x41791eb8    # 15.57f

    const/high16 v27, 0x40400000    # 3.0f

    move-object/from16 v25, v1

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    invoke-virtual {v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const v28, 0x4106e148    # 8.43f

    const/high16 v29, 0x40400000    # 3.0f

    const/high16 v30, 0x40d00000    # 6.5f

    const/high16 v31, 0x40400000    # 3.0f

    const/high16 v26, 0x41200000    # 10.0f

    const v27, 0x40923d71    # 4.57f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v12, v6, v12, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v6, v11, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    const/high16 v28, 0x40400000    # 3.0f

    const v29, 0x41791eb8    # 15.57f

    const/high16 v30, 0x40400000    # 3.0f

    const/high16 v31, 0x418c0000    # 17.5f

    const v26, 0x40923d71    # 4.57f

    const/high16 v27, 0x41600000    # 14.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v1, v6, v2, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    const/high16 v2, -0x3fa00000    # -3.5f

    invoke-virtual {v1, v4, v3, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v28, 0x3fc8f5c3    # 1.57f

    const/high16 v29, 0x40600000    # 3.5f

    const/high16 v30, 0x40600000    # 3.5f

    const/high16 v31, 0x40600000    # 3.5f

    const/16 v26, 0x0

    const v27, 0x3ff70a3d    # 1.93f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v2, -0x3fa00000    # -3.5f

    invoke-virtual {v1, v4, v3, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)V

    const/high16 v2, 0x41600000    # 14.0f

    const v3, 0x419b70a4    # 19.43f

    invoke-virtual {v1, v3, v2, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v28, 0x40600000    # 3.5f

    const v29, -0x40370a3d    # -1.57f

    const/high16 v31, -0x3fa00000    # -3.5f

    const v26, 0x3ff70a3d    # 1.93f

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const v2, 0x419b70a4    # 19.43f

    invoke-virtual {v1, v2, v12, v15, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-static {v1, v15, v12, v14, v0}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    const v28, 0x41855c29    # 16.67f

    const/high16 v29, 0x40a00000    # 5.0f

    const/high16 v30, 0x418c0000    # 17.5f

    const/high16 v31, 0x40a00000    # 5.0f

    const/high16 v26, 0x41800000    # 16.0f

    const v27, 0x40b570a4    # 5.67f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v2, 0x41980000    # 19.0f

    const v3, 0x40b570a4    # 5.67f

    invoke-virtual {v1, v2, v3, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    const v2, 0x4192a3d7    # 18.33f

    invoke-virtual {v1, v2, v0, v15, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v1, v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v1, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v28, 0x40a00000    # 5.0f

    const v29, 0x40ea8f5c    # 7.33f

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, 0x40d00000    # 6.5f

    const v26, 0x40b570a4    # 5.67f

    const/high16 v27, 0x41000000    # 8.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v2, 0x40a00000    # 5.0f

    const v3, 0x40b570a4    # 5.67f

    invoke-virtual {v1, v3, v2, v8, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v0, v3, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    invoke-virtual {v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v1, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v1, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    const/high16 v2, 0x41980000    # 19.0f

    invoke-virtual {v1, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v28, -0x40400000    # -1.5f

    const v29, -0x40d47ae1    # -0.67f

    const/high16 v30, -0x40400000    # -1.5f

    const/high16 v31, -0x40400000    # -1.5f

    const v26, -0x40ab851f    # -0.83f

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)V

    invoke-virtual {v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)V

    const/high16 v28, 0x3fc00000    # 1.5f

    const v29, 0x3f2b851f    # 0.67f

    const/high16 v30, 0x3fc00000    # 1.5f

    const/high16 v31, 0x3fc00000    # 1.5f

    const v26, 0x3f547ae1    # 0.83f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)V

    const/high16 v2, 0x41980000    # 19.0f

    const v3, 0x4192a3d7    # 18.33f

    invoke-virtual {v1, v3, v2, v15, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-static {v1, v15, v2, v8, v2}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const/high16 v28, 0x40a00000    # 5.0f

    const v29, 0x4192a3d7    # 18.33f

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, 0x418c0000    # 17.5f

    const v26, 0x40b570a4    # 5.67f

    const/high16 v27, 0x41980000    # 19.0f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x40b570a4    # 5.67f

    invoke-virtual {v1, v2, v14, v8, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)V

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)V

    invoke-virtual {v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)V

    const v28, 0x40ea8f5c    # 7.33f

    const/high16 v29, 0x41980000    # 19.0f

    const/high16 v30, 0x40d00000    # 6.5f

    const/high16 v31, 0x41980000    # 19.0f

    const/high16 v26, 0x41000000    # 8.0f

    const v27, 0x4192a3d7    # 18.33f

    invoke-virtual/range {v25 .. v31}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v0, 0x41980000    # 19.0f

    invoke-virtual {v1, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v0, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v23, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v16

    move-object/from16 v18, v0

    move-object/from16 v20, v13

    invoke-static/range {v17 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt;->_keyboardCommandKey:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method
