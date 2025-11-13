.class public abstract Landroidx/compose/ui/graphics/vector/PathParserKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 51

    move-wide/from16 v1, p1

    move-wide/from16 v5, p5

    move-wide/from16 v3, p9

    move/from16 v15, p16

    const/16 v0, 0xb4

    int-to-double v7, v0

    div-double v7, p13, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v16, v1, v11

    mul-double v18, p3, v13

    add-double v18, v18, v16

    div-double v18, v18, v3

    neg-double v9, v1

    mul-double/2addr v9, v13

    mul-double v20, p3, v11

    add-double v20, v20, v9

    div-double v20, v20, p11

    mul-double v9, v5, v11

    mul-double v22, p7, v13

    add-double v22, v22, v9

    div-double v22, v22, v3

    neg-double v9, v5

    mul-double/2addr v9, v13

    mul-double v24, p7, v11

    add-double v24, v24, v9

    div-double v24, v24, p11

    sub-double v9, v18, v22

    sub-double v26, v20, v24

    add-double v28, v18, v22

    const/4 v0, 0x2

    int-to-double v0, v0

    div-double v28, v28, v0

    add-double v30, v20, v24

    div-double v30, v30, v0

    mul-double v32, v9, v9

    mul-double v34, v26, v26

    add-double v34, v34, v32

    const-wide/16 v32, 0x0

    cmpg-double v2, v34, v32

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    div-double v36, v36, v34

    const-wide/high16 v38, 0x3fd0000000000000L    # 0.25

    sub-double v36, v36, v38

    cmpg-double v2, v36, v32

    if-gez v2, :cond_1

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v7, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v7

    double-to-float v0, v0

    float-to-double v0, v0

    mul-double v9, v3, v0

    mul-double v11, p11, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    return-void

    :cond_1
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v9, v5

    mul-double v5, v5, v26

    move/from16 v2, p15

    move/from16 v15, p16

    if-ne v2, v15, :cond_2

    sub-double v28, v28, v5

    add-double v30, v30, v9

    goto :goto_0

    :cond_2
    add-double v28, v28, v5

    sub-double v30, v30, v9

    :goto_0
    sub-double v5, v20, v30

    sub-double v9, v18, v28

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double v9, v24, v30

    move-wide/from16 v18, v0

    sub-double v0, v22, v28

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v0, v5

    cmpl-double v2, v0, v32

    if-ltz v2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eq v15, v10, :cond_5

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double v0, v0, v20

    goto :goto_2

    :cond_4
    add-double v0, v0, v20

    :cond_5
    :goto_2
    mul-double v28, v28, v3

    mul-double v30, v30, p11

    mul-double v20, v28, v11

    mul-double v22, v30, v13

    sub-double v20, v20, v22

    mul-double v28, v28, v13

    mul-double v30, v30, v11

    add-double v30, v30, v28

    const/4 v2, 0x4

    int-to-double v10, v2

    mul-double v12, v0, v10

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v22, v10

    neg-double v9, v3

    mul-double v24, v9, v12

    mul-double v26, v24, v16

    mul-double v28, p11, v7

    mul-double v32, v28, v14

    sub-double v26, v26, v32

    mul-double/2addr v9, v7

    mul-double v16, v16, v9

    mul-double v32, p11, v12

    mul-double v14, v14, v32

    add-double v14, v14, v16

    move-wide/from16 p7, v5

    int-to-double v5, v2

    div-double/2addr v0, v5

    move-wide/from16 v5, p1

    move-wide/from16 v16, p7

    move-wide/from16 v34, v26

    const/4 v11, 0x0

    move-wide/from16 v26, v14

    move-wide/from16 v14, p3

    :goto_3
    if-ge v11, v2, :cond_6

    add-double v36, v16, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    mul-double v42, v3, v12

    mul-double v42, v42, v40

    add-double v42, v42, v20

    mul-double v44, v28, v38

    move-wide/from16 p7, v0

    sub-double v0, v42, v44

    mul-double v42, v3, v7

    mul-double v42, v42, v40

    add-double v42, v42, v30

    mul-double v44, v32, v38

    move v4, v2

    add-double v2, v44, v42

    mul-double v42, v24, v38

    mul-double v44, v28, v40

    sub-double v42, v42, v44

    mul-double v38, v38, v9

    mul-double v40, v40, v32

    add-double v38, v40, v38

    sub-double v16, v36, v16

    div-double v40, v16, v18

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->tan(D)D

    move-result-wide v40

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v44, 0x4008000000000000L    # 3.0

    mul-double v44, v44, v40

    mul-double v44, v44, v40

    add-double v44, v44, v22

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v40

    move/from16 p1, v4

    move-wide/from16 p5, v7

    const/4 v4, 0x1

    int-to-double v7, v4

    sub-double v40, v40, v7

    mul-double v40, v40, v16

    const/4 v7, 0x3

    int-to-double v7, v7

    div-double v40, v40, v7

    mul-double v34, v34, v40

    add-double v5, v34, v5

    mul-double v26, v26, v40

    add-double v7, v26, v14

    mul-double v14, v40, v42

    sub-double v14, v0, v14

    mul-double v40, v40, v38

    move-wide/from16 p13, v9

    sub-double v9, v2, v40

    double-to-float v5, v5

    double-to-float v6, v7

    double-to-float v7, v14

    double-to-float v8, v9

    double-to-float v9, v0

    double-to-float v10, v2

    move-object/from16 v14, p0

    check-cast v14, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v14, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    move-object/from16 v44, v14

    move/from16 v45, v5

    move/from16 v46, v6

    move/from16 v47, v7

    move/from16 v48, v8

    move/from16 v49, v9

    move/from16 v50, v10

    invoke-virtual/range {v44 .. v50}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p13

    move-wide v5, v0

    move-wide v14, v2

    move-wide/from16 v16, v36

    move-wide/from16 v26, v38

    move-wide/from16 v34, v42

    move/from16 v2, p1

    move-wide/from16 v0, p7

    move-wide/from16 v3, p9

    goto/16 :goto_3

    :cond_6
    return-void
.end method

.method public static final toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v1, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v14, v1}, Landroidx/compose/ui/graphics/AndroidPath;->setFillType-oQ8Xj4U(I)V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode;

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    const/4 v12, 0x0

    move v13, v3

    move v2, v12

    move v3, v2

    move v4, v3

    move v5, v4

    move/from16 v18, v5

    move/from16 v19, v18

    :goto_2
    if-ge v13, v15, :cond_19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroidx/compose/ui/graphics/vector/PathNode;

    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    if-eqz v6, :cond_2

    iget-object v1, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    move-object/from16 v21, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    move/from16 v2, v18

    move v4, v2

    move/from16 v3, v19

    :goto_3
    move v5, v3

    goto/16 :goto_a

    :cond_2
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v6, :cond_3

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->dx:F

    add-float/2addr v2, v6

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->dy:F

    add-float/2addr v3, v1

    iget-object v7, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    move/from16 v18, v2

    move/from16 v19, v3

    :goto_4
    move-object/from16 v21, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    goto/16 :goto_a

    :cond_3
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v6, :cond_4

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->x:F

    iget-object v3, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->y:F

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v1

    move/from16 v19, v3

    move/from16 v18, v2

    goto :goto_4

    :cond_4
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    if-eqz v6, :cond_5

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dx:F

    iget-object v7, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v8, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dy:F

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dx:F

    add-float/2addr v2, v1

    add-float/2addr v3, v8

    goto :goto_4

    :cond_5
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    if-eqz v6, :cond_6

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->x:F

    iget-object v3, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->y:F

    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->x:F

    move v2, v1

    move v3, v6

    goto :goto_4

    :cond_6
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    if-eqz v6, :cond_7

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    iget-object v7, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v7, v6, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    add-float/2addr v2, v1

    goto :goto_4

    :cond_7
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    if-eqz v6, :cond_8

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->x:F

    iget-object v6, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->x:F

    move v2, v1

    goto :goto_4

    :cond_8
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    if-eqz v6, :cond_9

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->dy:F

    iget-object v7, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v7, v12, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->dy:F

    :goto_5
    add-float/2addr v3, v1

    goto/16 :goto_4

    :cond_9
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    if-eqz v6, :cond_a

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    iget v3, v1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->y:F

    iget-object v6, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->y:F

    move v3, v1

    goto/16 :goto_4

    :cond_a
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    if-eqz v6, :cond_b

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx1:F

    iget-object v5, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy1:F

    iget v7, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx2:F

    iget v8, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy2:F

    iget v9, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx3:F

    iget v11, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy3:F

    move-object/from16 v20, v5

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v11

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx2:F

    add-float/2addr v4, v2

    iget v5, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy2:F

    add-float/2addr v5, v3

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx3:F

    add-float/2addr v2, v6

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy3:F

    goto :goto_5

    :cond_b
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    if-eqz v6, :cond_c

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    iget v3, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    iget-object v2, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    iget v5, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    iget v7, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    iget v8, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    iget v3, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    :goto_6
    move v5, v3

    move-object/from16 v21, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    move v3, v1

    move/from16 v30, v4

    move v4, v2

    move/from16 v2, v30

    goto/16 :goto_a

    :cond_c
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    if-eqz v6, :cond_e

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve:Z

    if-eqz v1, :cond_d

    sub-float v1, v2, v4

    sub-float v4, v3, v5

    move/from16 v21, v1

    move/from16 v22, v4

    goto :goto_7

    :cond_d
    move/from16 v21, v12

    move/from16 v22, v21

    :goto_7
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx1:F

    iget-object v5, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy1:F

    iget v7, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx2:F

    iget v8, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy2:F

    move-object/from16 v20, v5

    move/from16 v23, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx1:F

    add-float/2addr v4, v2

    iget v5, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy1:F

    add-float/2addr v5, v3

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx2:F

    add-float/2addr v2, v6

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy2:F

    goto/16 :goto_5

    :cond_e
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    const/4 v7, 0x2

    if-eqz v6, :cond_10

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve:Z

    if-eqz v1, :cond_f

    int-to-float v1, v7

    mul-float/2addr v2, v1

    sub-float/2addr v2, v4

    mul-float/2addr v1, v3

    sub-float v3, v1, v5

    :cond_f
    move/from16 v21, v2

    move/from16 v22, v3

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    iget-object v3, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    iget v5, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    move-object/from16 v20, v3

    move/from16 v23, v2

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    invoke-virtual/range {v20 .. v26}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    iget v3, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    goto/16 :goto_6

    :cond_10
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    if-eqz v6, :cond_11

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx1:F

    iget-object v5, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dy1:F

    iget v7, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx2:F

    iget v8, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dy2:F

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx1:F

    add-float/2addr v1, v2

    add-float/2addr v6, v3

    add-float/2addr v2, v7

    add-float/2addr v3, v8

    move v4, v1

    move v5, v6

    goto/16 :goto_4

    :cond_11
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    if-eqz v6, :cond_12

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    iget v2, v1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x1:F

    iget-object v3, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->y1:F

    iget v5, v1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x2:F

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->y2:F

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x1:F

    move v2, v5

    move v3, v6

    move-object/from16 v21, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    move v5, v4

    :goto_8
    move v4, v1

    goto/16 :goto_a

    :cond_12
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    if-eqz v6, :cond_14

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad:Z

    if-eqz v1, :cond_13

    sub-float v1, v2, v4

    sub-float v4, v3, v5

    goto :goto_9

    :cond_13
    move v1, v12

    move v4, v1

    :goto_9
    move-object v5, v10

    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    iget v6, v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dx:F

    iget-object v7, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v8, v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dy:F

    invoke-virtual {v7, v1, v4, v6, v8}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v1, v2

    add-float/2addr v4, v3

    iget v5, v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dx:F

    add-float/2addr v2, v5

    add-float/2addr v3, v8

    move v5, v4

    move-object/from16 v21, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    goto :goto_8

    :cond_14
    instance-of v6, v10, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    if-eqz v6, :cond_16

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad:Z

    if-eqz v1, :cond_15

    int-to-float v1, v7

    mul-float/2addr v2, v1

    sub-float/2addr v2, v4

    mul-float/2addr v1, v3

    sub-float v3, v1, v5

    :cond_15
    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->x:F

    iget-object v5, v14, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget v6, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->y:F

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->x:F

    move v4, v2

    move v5, v3

    move v3, v6

    move-object/from16 v21, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    move v2, v1

    goto/16 :goto_a

    :cond_16
    instance-of v1, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    if-eqz v1, :cond_18

    move-object v1, v10

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->arcStartDx:F

    add-float v11, v4, v2

    iget v4, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->arcStartDy:F

    add-float v8, v4, v3

    float-to-double v4, v2

    float-to-double v6, v3

    float-to-double v2, v11

    move/from16 v20, v13

    float-to-double v12, v8

    iget v9, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->horizontalEllipseRadius:F

    move-object/from16 v21, v10

    move/from16 v22, v11

    float-to-double v10, v9

    iget v9, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->verticalEllipseRadius:F

    move-wide/from16 v23, v10

    float-to-double v10, v9

    iget v9, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->theta:F

    move-wide/from16 v25, v10

    float-to-double v10, v9

    iget-boolean v9, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isMoreThanHalf:Z

    move/from16 v16, v9

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isPositiveArc:Z

    move/from16 v17, v1

    move-object v1, v14

    move-wide/from16 v27, v2

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v27

    move/from16 v27, v8

    move-wide v8, v12

    move-wide/from16 v28, v10

    move-object/from16 v12, v21

    move/from16 v21, v22

    move-wide/from16 v10, v23

    move-object v0, v12

    move/from16 v22, v20

    const/16 v20, 0x0

    move-wide/from16 v12, v25

    move-object/from16 v23, v14

    move/from16 v24, v15

    move-wide/from16 v14, v28

    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    move/from16 v2, v21

    move v4, v2

    move/from16 v3, v27

    move v5, v3

    :cond_17
    move-object/from16 v21, v0

    goto :goto_a

    :cond_18
    move-object v0, v10

    move/from16 v20, v12

    move/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    if-eqz v1, :cond_17

    float-to-double v4, v2

    float-to-double v6, v3

    move-object v14, v0

    check-cast v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    iget v1, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartX:F

    float-to-double v8, v1

    iget v15, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartY:F

    float-to-double v10, v15

    iget v1, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->horizontalEllipseRadius:F

    float-to-double v12, v1

    iget v1, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->verticalEllipseRadius:F

    float-to-double v2, v1

    iget v1, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->theta:F

    move-wide/from16 v25, v12

    float-to-double v12, v1

    iget-boolean v1, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isMoreThanHalf:Z

    move/from16 v16, v1

    iget-boolean v1, v14, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isPositiveArc:Z

    move/from16 v17, v1

    move-object/from16 v1, v23

    move-wide/from16 v27, v2

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide/from16 v10, v25

    move-wide/from16 v25, v12

    move-wide/from16 v12, v27

    move-object/from16 v21, v0

    move-object v0, v14

    move/from16 v27, v15

    move-wide/from16 v14, v25

    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    iget v0, v0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartX:F

    move v2, v0

    move v4, v2

    move/from16 v3, v27

    goto/16 :goto_3

    :goto_a
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v12, v20

    move-object/from16 v1, v21

    move-object/from16 v14, v23

    move/from16 v15, v24

    goto/16 :goto_2

    :cond_19
    return-void
.end method
