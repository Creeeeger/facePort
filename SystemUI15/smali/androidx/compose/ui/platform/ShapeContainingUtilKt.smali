.class public abstract Landroidx/compose/ui/platform/ShapeContainingUtilKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final isInOutline(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_9

    iget v3, v0, Landroidx/compose/ui/geometry/Rect;->right:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_9

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->bottom:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_9

    :cond_0
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_1
    instance-of v5, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v5, :cond_8

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget v5, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    cmpg-float v5, v1, v5

    if-ltz v5, :cond_9

    iget v5, v0, Landroidx/compose/ui/geometry/RoundRect;->right:F

    cmpl-float v8, v1, v5

    if-gez v8, :cond_9

    iget v8, v0, Landroidx/compose/ui/geometry/RoundRect;->top:F

    cmpg-float v9, v2, v8

    if-ltz v9, :cond_9

    iget v9, v0, Landroidx/compose/ui/geometry/RoundRect;->bottom:F

    cmpl-float v10, v2, v9

    if-ltz v10, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-wide v10, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v6

    iget-wide v12, v0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v14

    add-float/2addr v14, v6

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v6

    cmpg-float v6, v14, v6

    if-gtz v6, :cond_6

    iget-wide v14, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v6

    move/from16 p0, v8

    iget-wide v7, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v16

    add-float v16, v16, v6

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v6

    cmpg-float v6, v16, v6

    if-gtz v6, :cond_6

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v6

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v16

    add-float v16, v16, v6

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v6

    cmpg-float v6, v16, v6

    if-gtz v6, :cond_6

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v6

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v16

    add-float v16, v16, v6

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v6

    cmpg-float v6, v16, v6

    if-gtz v6, :cond_6

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    iget v4, v0, Landroidx/compose/ui/geometry/RoundRect;->left:F

    add-float v6, v3, v4

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v3

    add-float v10, v3, p0

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    sub-float v11, v5, v3

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v3

    add-float v12, v3, p0

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    sub-float/2addr v5, v3

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v3

    sub-float v7, v9, v3

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v3

    sub-float v8, v9, v3

    invoke-static {v14, v15}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v3

    add-float/2addr v4, v3

    cmpg-float v3, v1, v6

    if-gez v3, :cond_3

    cmpg-float v3, v2, v10

    if-gez v3, :cond_3

    iget-wide v3, v0, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide v2, v3

    move v4, v6

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    :goto_0
    move v6, v0

    goto/16 :goto_2

    :cond_3
    cmpg-float v3, v1, v4

    if-gez v3, :cond_4

    cmpl-float v3, v2, v8

    if-lez v3, :cond_4

    iget-wide v5, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide v2, v5

    move v5, v8

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_0

    :cond_4
    cmpl-float v3, v1, v11

    if-lez v3, :cond_5

    cmpg-float v3, v2, v12

    if-gez v3, :cond_5

    iget-wide v3, v0, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide v2, v3

    move v4, v11

    move v5, v12

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_0

    :cond_5
    cmpl-float v3, v1, v5

    if-lez v3, :cond_0

    cmpl-float v3, v2, v7

    if-lez v3, :cond_0

    iget-wide v3, v0, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide v2, v3

    move v4, v5

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v5

    goto :goto_1

    :cond_7
    move-object v5, v4

    :goto_1
    invoke-static {v5, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-static {v5, v1, v2, v3, v4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInPath(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result v6

    goto :goto_2

    :cond_8
    instance-of v5, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v5, :cond_a

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInPath(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result v6

    :cond_9
    :goto_2
    return v6

    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static final isInPath(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 4

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    const v1, 0x3ba3d70a    # 0.005f

    sub-float v2, p1, v1

    sub-float v3, p2, v1

    add-float/2addr p1, v1

    add-float/2addr p2, v1

    invoke-direct {v0, v2, v3, p1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    if-nez p3, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p3

    :cond_0
    invoke-static {p3, v0}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;)V

    if-nez p4, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object p4

    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/graphics/PathOperation;->Intersect:I

    check-cast p4, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {p4, p0, p3, p1}, Landroidx/compose/ui/graphics/AndroidPath;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    iget-object p0, p4, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    invoke-virtual {p4}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    check-cast p3, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/AndroidPath;->reset()V

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final isWithinEllipse-VE1yxkc(FFJFF)Z
    .locals 0

    sub-float/2addr p0, p4

    sub-float/2addr p1, p5

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p4

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p2

    mul-float/2addr p0, p0

    mul-float/2addr p4, p4

    div-float/2addr p0, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    div-float/2addr p1, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
