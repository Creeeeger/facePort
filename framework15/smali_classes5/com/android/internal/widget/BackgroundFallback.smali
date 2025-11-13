.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private blacklist mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isOpaque(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    if-lt v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    move v8, v4

    move v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_4

    move-object/from16 v14, p2

    invoke-virtual {v14, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move/from16 v16, v12

    invoke-virtual {v15}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v14, p4

    if-ne v15, v14, :cond_1

    if-nez v12, :cond_2

    instance-of v14, v15, Landroid/view/ViewGroup;

    if-eqz v14, :cond_2

    move-object v14, v15

    check-cast v14, Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_3

    invoke-direct {v0, v12}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v14

    add-int/2addr v14, v6

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v14, v7

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v14, v6

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v7

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v16

    goto :goto_0

    :cond_4
    move/from16 v16, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x2

    if-ge v13, v14, :cond_d

    if-nez v13, :cond_5

    move-object v14, v2

    goto :goto_3

    :cond_5
    move-object v14, v3

    :goto_3
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/android/internal/widget/BackgroundFallback;->isOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_7

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v8, :cond_7

    const/4 v8, 0x0

    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_8

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_8

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gt v15, v10, :cond_8

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_8

    move v10, v4

    :cond_8
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v9, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_9

    const/4 v9, 0x0

    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gt v15, v11, :cond_a

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v5, :cond_a

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-gtz v15, :cond_a

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v15, v4, :cond_a

    move v11, v5

    :cond_a
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-gtz v15, :cond_b

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-lt v15, v9, :cond_b

    const/4 v15, 0x1

    goto :goto_4

    :cond_b
    const/4 v15, 0x0

    :goto_4
    and-int/2addr v12, v15

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v12, 0x0

    nop

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_d
    if-eqz v12, :cond_f

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v13

    if-nez v13, :cond_e

    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/widget/BackgroundFallback;->viewsCoverEntireWidth(Landroid/view/View;Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_f

    :cond_e
    const/4 v9, 0x0

    :cond_f
    if-ge v8, v10, :cond_15

    if-lt v9, v11, :cond_10

    goto :goto_8

    :cond_10
    if-lez v9, :cond_11

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    :goto_7
    if-lez v8, :cond_12

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v14, v9, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    if-ge v10, v4, :cond_13

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_13
    if-ge v11, v5, :cond_14

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v8, v11, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v13, v0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    return-void

    :cond_15
    :goto_8
    return-void
.end method

.method public blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist hasFallback()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    return-void
.end method
