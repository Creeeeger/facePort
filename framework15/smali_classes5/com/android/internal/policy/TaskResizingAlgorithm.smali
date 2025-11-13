.class public Lcom/android/internal/policy/TaskResizingAlgorithm;
.super Ljava/lang/Object;
.source "TaskResizingAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/TaskResizingAlgorithm$CtrlType;
    }
.end annotation


# static fields
.field public static final blacklist CTRL_BOTTOM:I = 0x8

.field public static final blacklist CTRL_LEFT:I = 0x1

.field public static final blacklist CTRL_NONE:I = 0x0

.field public static final blacklist CTRL_RIGHT:I = 0x2

.field public static final blacklist CTRL_TOP:I = 0x4

.field public static final blacklist MIN_ASPECT:F = 1.2f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;
    .locals 19

    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p8

    sub-float v4, p0, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-float v5, p1, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v8, v6

    sub-int v11, v9, v7

    and-int/lit8 v12, p5, 0x1

    if-eqz v12, :cond_0

    sub-int v12, v10, v4

    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_0

    :cond_0
    and-int/lit8 v12, p5, 0x2

    if-eqz v12, :cond_1

    add-int v12, v10, v4

    iget v13, v3, Landroid/graphics/Point;->x:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_1
    :goto_0
    and-int/lit8 v12, p5, 0x4

    if-eqz v12, :cond_2

    sub-int v12, v11, v5

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    :cond_2
    and-int/lit8 v12, p5, 0x8

    if-eqz v12, :cond_3

    add-int v12, v11, v5

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_3
    :goto_1
    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    if-eqz p9, :cond_f

    const v13, 0x3f99999a    # 1.2f

    if-eqz p10, :cond_4

    cmpg-float v14, v12, v13

    if-ltz v14, :cond_5

    :cond_4
    if-nez p10, :cond_f

    float-to-double v14, v12

    const-wide v16, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v14, v14, v16

    if-lez v14, :cond_f

    :cond_5
    if-eqz p10, :cond_8

    iget v14, v3, Landroid/graphics/Point;->x:I

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v15, v14

    div-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    if-ge v15, v2, :cond_6

    move/from16 v15, p7

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v16, v4

    int-to-float v4, v15

    mul-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_2

    :cond_6
    move/from16 v16, v4

    :goto_2
    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v4, v0

    mul-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v4, v1, :cond_7

    move/from16 v4, p6

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v18, v5

    int-to-float v5, v4

    div-float/2addr v5, v13

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    :cond_7
    move/from16 v17, v0

    move/from16 v18, v5

    goto :goto_4

    :cond_8
    move/from16 v16, v4

    move/from16 v18, v5

    iget v0, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v4, v0

    mul-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v4, v2, :cond_9

    move/from16 v4, p7

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v14, v4

    div-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v0

    move v15, v4

    goto :goto_3

    :cond_9
    move v14, v0

    move v15, v4

    :goto_3
    iget v0, v3, Landroid/graphics/Point;->y:I

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v4, v0

    div-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v4, v1, :cond_a

    move/from16 v4, p6

    iget v5, v3, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    int-to-float v0, v4

    mul-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    :cond_a
    move/from16 v17, v0

    :goto_4
    sub-int v5, v8, v6

    const/16 v17, 0x1

    if-gt v10, v5, :cond_c

    sub-int v5, v9, v7

    if-le v11, v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    move/from16 v5, v17

    :goto_6
    mul-int v13, v14, v15

    mul-int v1, v4, v0

    if-le v13, v1, :cond_d

    move/from16 v13, v17

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    :goto_7
    if-ne v5, v13, :cond_e

    move v10, v14

    move v11, v15

    goto :goto_8

    :cond_e
    move v10, v4

    move v11, v0

    goto :goto_8

    :cond_f
    move/from16 v16, v4

    move/from16 v18, v5

    :goto_8
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_10

    sub-int v6, v8, v10

    goto :goto_9

    :cond_10
    add-int v8, v6, v10

    :goto_9
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_11

    sub-int v7, v9, v11

    goto :goto_a

    :cond_11
    add-int v9, v7, v11

    :goto_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
