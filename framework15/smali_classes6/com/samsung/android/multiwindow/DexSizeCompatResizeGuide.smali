.class public Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;
.super Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;
.source "DexSizeCompatResizeGuide.java"


# static fields
.field private static final blacklist DELTA_ADJUSTMENT:I = 0x4

.field private static final blacklist MAX_SIZE_THRESHOLD:I = 0xc8

.field private static final blacklist MIN_SIZE_THRESHOLD:I = 0xc8

.field private static final blacklist PROVIDE_SNAP_TO_FULLSCREEN:Z


# instance fields
.field private final blacklist mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/SizeCompatResizeGuide;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static blacklist applyDeltaAdjustment(F)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p0, v0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static blacklist calculateDelta(II)I
    .locals 1

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-gtz p0, :cond_1

    if-gtz p1, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist adjustBounds(Lcom/samsung/android/core/SizeCompatInfo;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/function/Consumer;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/core/SizeCompatInfo;",
            "I",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->isDragDexSizeCompatRotatable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getDisplayWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getDisplayHeight()I

    move-result v9

    nop

    invoke-static {v8, v9}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    move-result v10

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v11, v12}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    move-result v11

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    if-eq v10, v11, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v3, :cond_6

    if-ne v10, v12, :cond_3

    invoke-static {v5, v7}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    if-nez v14, :cond_2

    if-lez v15, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v15

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v16, 0x0

    :goto_2
    nop

    move/from16 v12, v16

    goto :goto_5

    :cond_3
    invoke-static {v4, v6}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    move/from16 v16, v15

    if-nez v14, :cond_5

    if-lez v15, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v17, v15

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v17, 0x0

    :goto_4
    move/from16 v15, v17

    move/from16 v12, v16

    goto :goto_5

    :cond_6
    nop

    invoke-static {v5, v7}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v15

    invoke-static {v4, v6}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v12

    invoke-static {v15, v12}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->calculateDelta(II)I

    move-result v12

    move v15, v12

    :goto_5
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    int-to-float v13, v12

    invoke-static {v13}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->applyDeltaAdjustment(F)I

    move-result v13

    move/from16 v18, v4

    int-to-float v4, v15

    invoke-static {v4}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->applyDeltaAdjustment(F)I

    move-result v4

    invoke-virtual {v1, v13, v4}, Landroid/graphics/Rect;->inset(II)V

    if-eqz v14, :cond_7

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_7
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMaxWidth()I

    move-result v13

    move/from16 v19, v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMaxHeight()I

    move-result v4

    const/16 v20, 0x0

    move/from16 v21, v5

    add-int/lit8 v5, v13, 0x0

    move/from16 v22, v6

    add-int/lit8 v6, v4, 0x0

    move/from16 v23, v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lt v7, v5, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-lt v7, v6, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_9

    move/from16 v24, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v33, v5

    move/from16 v25, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move/from16 v32, v15

    move-object/from16 v5, p6

    move v10, v7

    move/from16 v7, v24

    goto/16 :goto_11

    :cond_9
    move/from16 v24, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMinWidth()I

    move-result v7

    move/from16 v25, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/core/SizeCompatInfo;->getMinHeight()I

    move-result v8

    if-eqz v3, :cond_11

    const/16 v26, 0x190

    if-eqz v14, :cond_f

    move/from16 v27, v9

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v9

    move/from16 v28, v10

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v10

    move/from16 v29, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v11

    move/from16 v30, v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    move/from16 v31, v14

    add-int/lit16 v14, v9, 0x190

    move/from16 v32, v15

    add-int/lit16 v15, v10, 0x190

    if-ge v11, v14, :cond_b

    if-lt v12, v15, :cond_a

    goto :goto_7

    :cond_a
    const/16 v33, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/16 v33, 0x1

    :goto_8
    move/from16 v19, v33

    if-eqz v19, :cond_e

    sub-int v33, v11, v9

    div-int/lit8 v33, v33, 0x2

    move/from16 v34, v11

    add-int v11, v33, v9

    sub-int v33, v12, v10

    div-int/lit8 v33, v33, 0x2

    move/from16 v35, v9

    add-int v9, v33, v10

    if-gt v11, v5, :cond_d

    if-le v9, v6, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v33, v5

    goto :goto_a

    :cond_d
    :goto_9
    const/16 v24, 0x1

    const/16 v19, 0x0

    move/from16 v33, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    :cond_e
    move/from16 v33, v5

    move/from16 v35, v9

    move/from16 v34, v11

    :goto_a
    goto :goto_c

    :cond_f
    move/from16 v33, v5

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move/from16 v32, v15

    add-int/lit16 v14, v7, 0x190

    add-int/lit16 v15, v8, 0x190

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v5, v14, :cond_10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v5, v15, :cond_10

    const/4 v5, 0x1

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    :goto_b
    move/from16 v19, v5

    :goto_c
    goto :goto_f

    :cond_11
    move/from16 v33, v5

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v14

    move/from16 v32, v15

    move v14, v7

    move v15, v8

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v14, :cond_13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v5, v15, :cond_12

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    goto :goto_e

    :cond_13
    :goto_d
    const/4 v5, 0x1

    :goto_e
    move/from16 v19, v5

    :goto_f
    if-eqz v19, :cond_14

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move v10, v5

    move-object/from16 v5, p6

    goto :goto_10

    :cond_14
    if-eqz v3, :cond_16

    if-eqz p5, :cond_15

    if-nez v24, :cond_15

    move-object/from16 v5, p6

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->cancelAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void

    :cond_15
    move-object/from16 v5, p6

    const/4 v10, 0x0

    goto :goto_10

    :cond_16
    move-object/from16 v5, p6

    iget-object v9, v0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, v0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v9, v1}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gtz v10, :cond_17

    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_17
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v10, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v1, v9}, Lcom/samsung/android/core/CompatUtils;->getScaledBounds(Landroid/graphics/Rect;F)V

    :goto_10
    move/from16 v7, v24

    :goto_11
    if-nez v3, :cond_1e

    if-eqz p2, :cond_1e

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_18

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v8, v9, :cond_18

    goto :goto_16

    :cond_18
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_19

    const/4 v8, 0x1

    goto :goto_12

    :cond_19
    move v8, v10

    :goto_12
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_1a

    const/4 v12, 0x1

    goto :goto_13

    :cond_1a
    move v12, v10

    :goto_13
    move v9, v12

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    if-eqz v8, :cond_1b

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_14

    :cond_1b
    move v11, v10

    :goto_14
    if-eqz v9, :cond_1c

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v10, v12

    goto :goto_15

    :cond_1c
    nop

    :goto_15
    if-nez v11, :cond_1d

    if-eqz v10, :cond_1f

    :cond_1d
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_17

    :cond_1e
    :goto_16
    invoke-static {v2, v1}, Lcom/samsung/android/core/CompatUtils;->adjustBoundsToCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1f
    :goto_17
    if-eqz v3, :cond_20

    if-eqz v19, :cond_20

    const-wide/16 v8, 0xfa

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->snapToBounds(J)V

    :cond_20
    return-void
.end method

.method public blacklist cancelAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->show(Landroid/graphics/Rect;)V

    sget-object v5, Lcom/samsung/android/util/InterpolatorUtils;->LINEAR:Landroid/animation/TimeInterpolator;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    const/16 v6, 0x64

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->snapToBounds(Landroid/graphics/Rect;JLandroid/animation/TimeInterpolator;IIZ)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/DexSizeCompatResizeGuide;->show(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
