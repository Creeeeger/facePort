.class public Lcom/samsung/android/util/SemViewUtils;
.super Ljava/lang/Object;
.source "SemViewUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemViewUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRoundedCorner(IIII)Landroid/graphics/Path;
    .locals 8

    add-int v0, p1, p3

    move v1, p3

    move v2, p3

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    int-to-float v5, p1

    add-int v6, p2, v2

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v5, v1

    int-to-float v6, v1

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_0

    :sswitch_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v5, v2

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_0

    :sswitch_2
    int-to-float v5, v0

    add-int v6, p2, p3

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    int-to-float v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_0

    :sswitch_3
    int-to-float v5, v0

    int-to-float v6, p2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    neg-int v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    nop

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getSmoothCornerRectPath(FFF)Landroid/graphics/Path;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SemViewUtils"

    const-string v1, "This method is deprecated. Use getSmoothCornerRectPath(float, float, float, float, float) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmoothCornerRectPath(FFFFF)Landroid/graphics/Path;
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/util/SemViewUtils;->getSmoothCornerRectPath(Landroid/graphics/Path;FFFFF)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmoothCornerRectPath(Landroid/graphics/Path;FFFFF)Landroid/graphics/Path;
    .locals 33

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    if-nez p0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :goto_0
    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    cmpg-float v1, v9, v0

    if-lez v1, :cond_4

    cmpg-float v1, v10, v0

    if-gtz v1, :cond_1

    move/from16 v1, p1

    move-object/from16 v28, v15

    goto/16 :goto_3

    :cond_1
    const/16 v18, 0x0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v1, v9, v19

    div-float v2, v10, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move/from16 v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v20

    div-float v0, v20, v14

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    div-float v0, v20, v14

    sub-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3e0e1bf0

    mul-float/2addr v3, v1

    sub-float v0, v2, v3

    move/from16 v21, v0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v21, v0

    :goto_1
    div-float v0, v20, v14

    float-to-double v0, v0

    const-wide v3, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v3

    if-lez v0, :cond_3

    div-float v0, v20, v14

    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3d2de440

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    move/from16 v22, v3

    goto :goto_2

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v22, v3

    :goto_2
    div-float v0, v9, v19

    add-float/2addr v0, v7

    invoke-virtual {v15, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v0, v9, v19

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v1, v20, v23

    const v24, 0x430030a4    # 128.19f

    mul-float v1, v1, v24

    mul-float v1, v1, v21

    sub-float v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v7

    invoke-virtual {v15, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v0, v7, v9

    div-float v1, v20, v23

    const v25, 0x42a73d71    # 83.62f

    mul-float v1, v1, v25

    mul-float v1, v1, v22

    sub-float v1, v0, v1

    add-float v0, v7, v9

    div-float v2, v20, v23

    const v26, 0x4286e666    # 67.45f

    mul-float v2, v2, v26

    sub-float v3, v0, v2

    div-float v0, v20, v23

    const v27, 0x40947ae1    # 4.64f

    mul-float v0, v0, v27

    add-float v4, v8, v0

    add-float v0, v7, v9

    div-float v2, v20, v23

    const v28, 0x424ca3d7    # 51.16f

    mul-float v2, v2, v28

    sub-float v5, v0, v2

    div-float v0, v20, v23

    const v29, 0x4155c28f    # 13.36f

    mul-float v0, v0, v29

    add-float v6, v8, v0

    move-object v0, v15

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v0, v7, v9

    div-float v1, v20, v23

    const v30, 0x420b70a4    # 34.86f

    mul-float v1, v1, v30

    sub-float v12, v0, v1

    div-float v0, v20, v23

    const v31, 0x41b08f5c    # 22.07f

    mul-float v0, v0, v31

    add-float v13, v8, v0

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v31

    sub-float/2addr v0, v1

    div-float v1, v20, v23

    mul-float v1, v1, v30

    add-float/2addr v1, v8

    add-float v2, v7, v9

    div-float v3, v20, v23

    mul-float v3, v3, v29

    sub-float v16, v2, v3

    div-float v2, v20, v23

    mul-float v2, v2, v28

    add-float v17, v8, v2

    move-object v11, v15

    move/from16 v32, v14

    move v14, v0

    move-object v6, v15

    move v15, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v27

    sub-float v12, v0, v1

    div-float v0, v20, v23

    mul-float v0, v0, v26

    add-float v13, v8, v0

    add-float v14, v7, v9

    div-float v0, v20, v23

    mul-float v0, v0, v25

    mul-float v0, v0, v22

    add-float v15, v8, v0

    add-float v16, v7, v9

    div-float v0, v10, v19

    div-float v1, v20, v23

    mul-float v1, v1, v24

    mul-float v1, v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v17, v8, v0

    move-object v11, v6

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v0, v7, v9

    div-float v1, v10, v19

    div-float v2, v20, v23

    mul-float v2, v2, v24

    mul-float v2, v2, v21

    sub-float v2, v10, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v12, v7, v9

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v25

    mul-float v1, v1, v22

    sub-float v13, v0, v1

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v27

    sub-float v14, v0, v1

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v26

    sub-float v15, v0, v1

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v29

    sub-float v16, v0, v1

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v28

    sub-float v17, v0, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v31

    sub-float v12, v0, v1

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v30

    sub-float v13, v0, v1

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v30

    sub-float v14, v0, v1

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v31

    sub-float v15, v0, v1

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v28

    sub-float v16, v0, v1

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v29

    sub-float v17, v0, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v26

    sub-float v12, v0, v1

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v27

    sub-float v13, v0, v1

    add-float v0, v7, v9

    div-float v1, v20, v23

    mul-float v1, v1, v25

    mul-float v1, v1, v22

    sub-float v14, v0, v1

    add-float v15, v8, v10

    div-float v0, v9, v19

    div-float v1, v20, v23

    mul-float v1, v1, v24

    mul-float v1, v1, v21

    sub-float v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v16, v7, v0

    add-float v17, v8, v10

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v0, v9, v19

    div-float v1, v20, v23

    mul-float v1, v1, v24

    mul-float v1, v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v7

    add-float v1, v8, v10

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v0, v20, v23

    mul-float v0, v0, v25

    mul-float v0, v0, v22

    add-float v12, v7, v0

    add-float v13, v8, v10

    div-float v0, v20, v23

    mul-float v0, v0, v26

    add-float v14, v7, v0

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v27

    sub-float v15, v0, v1

    div-float v0, v20, v23

    mul-float v0, v0, v28

    add-float v16, v7, v0

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v29

    sub-float v17, v0, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v0, v20, v23

    mul-float v0, v0, v30

    add-float v12, v7, v0

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v31

    sub-float v13, v0, v1

    div-float v0, v20, v23

    mul-float v0, v0, v31

    add-float v14, v7, v0

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v30

    sub-float v15, v0, v1

    div-float v0, v20, v23

    mul-float v0, v0, v29

    add-float v16, v7, v0

    add-float v0, v8, v10

    div-float v1, v20, v23

    mul-float v1, v1, v28

    sub-float v17, v0, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v0, v20, v23

    mul-float v0, v0, v27

    add-float v1, v7, v0

    add-float v0, v8, v10

    div-float v2, v20, v23

    mul-float v2, v2, v26

    sub-float v2, v0, v2

    add-float v0, v8, v10

    div-float v3, v20, v23

    mul-float v3, v3, v25

    mul-float v3, v3, v22

    sub-float v4, v0, v3

    div-float v0, v10, v19

    div-float v3, v20, v23

    mul-float v3, v3, v24

    mul-float v3, v3, v21

    sub-float v3, v10, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float v11, v8, v0

    move-object v0, v6

    move/from16 v3, p2

    move/from16 v5, p2

    move-object v15, v6

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v0, v10, v19

    div-float v1, v20, v23

    mul-float v1, v1, v24

    mul-float v1, v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v8

    invoke-virtual {v15, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    div-float v0, v20, v23

    mul-float v0, v0, v25

    mul-float v0, v0, v22

    add-float v2, v8, v0

    div-float v0, v20, v23

    mul-float v0, v0, v27

    add-float v3, v7, v0

    div-float v0, v20, v23

    mul-float v0, v0, v26

    add-float v4, v8, v0

    div-float v0, v20, v23

    mul-float v0, v0, v29

    add-float v5, v7, v0

    div-float v0, v20, v23

    mul-float v0, v0, v28

    add-float v6, v8, v0

    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v0, v20, v23

    mul-float v0, v0, v31

    add-float v12, v7, v0

    div-float v0, v20, v23

    mul-float v0, v0, v30

    add-float v13, v8, v0

    div-float v0, v20, v23

    mul-float v0, v0, v30

    add-float v14, v7, v0

    div-float v0, v20, v23

    mul-float v0, v0, v31

    add-float/2addr v0, v8

    div-float v1, v20, v23

    mul-float v1, v1, v28

    add-float v16, v7, v1

    div-float v1, v20, v23

    mul-float v1, v1, v29

    add-float v17, v8, v1

    move-object v11, v15

    move-object/from16 v28, v15

    move v15, v0

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    div-float v0, v20, v23

    mul-float v0, v0, v26

    add-float v1, v7, v0

    div-float v0, v20, v23

    mul-float v0, v0, v27

    add-float v2, v8, v0

    div-float v0, v20, v23

    mul-float v0, v0, v25

    mul-float v0, v0, v22

    add-float v3, v7, v0

    div-float v0, v9, v19

    div-float v4, v20, v23

    mul-float v4, v4, v24

    mul-float v4, v4, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v5, v7, v0

    move-object/from16 v0, v28

    move/from16 v4, p3

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Path;->close()V

    return-object v28

    :cond_4
    move/from16 v1, p1

    move-object/from16 v28, v15

    :goto_3
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArguments : width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemViewUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v28
.end method

.method public static blacklist isDeviceDefaultFamily(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11200ef

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static blacklist isLightTheme(Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
