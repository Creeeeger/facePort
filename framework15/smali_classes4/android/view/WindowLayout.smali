.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist MAX_X:I = 0x186a0

.field static final blacklist MAX_Y:I = 0x186a0

.field static final blacklist MIN_X:I = -0x186a0

.field static final blacklist MIN_Y:I = -0x186a0

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final blacklist mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .locals 5

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    move v0, p2

    move v1, p3

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public static blacklist extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p3}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private static blacklist ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    return-void
.end method

.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v10, v8, 0x100

    const/16 v13, 0x100

    if-ne v10, v13, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-object v13, v6, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-object v14, v6, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v15, v6, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v12, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v11

    move/from16 v22, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v8

    invoke-virtual {v2, v4, v11, v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v11

    and-int/lit8 v18, v11, 0x1

    if-eqz v18, :cond_1

    move-object/from16 v23, v12

    iget v12, v8, Landroid/graphics/Insets;->left:I

    goto :goto_1

    :cond_1
    move-object/from16 v23, v12

    const/4 v12, 0x0

    :goto_1
    and-int/lit8 v18, v11, 0x2

    if-eqz v18, :cond_2

    move/from16 v24, v7

    iget v7, v8, Landroid/graphics/Insets;->top:I

    goto :goto_2

    :cond_2
    move/from16 v24, v7

    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v18, v11, 0x4

    if-eqz v18, :cond_3

    iget v5, v8, Landroid/graphics/Insets;->right:I

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v18, v11, 0x8

    if-eqz v18, :cond_4

    move/from16 v25, v11

    iget v11, v8, Landroid/graphics/Insets;->bottom:I

    goto :goto_4

    :cond_4
    move/from16 v25, v11

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v26, v8

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v12

    move/from16 v27, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v7

    move/from16 v28, v7

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    move/from16 v29, v5

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v11

    invoke-virtual {v14, v8, v12, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v13, :cond_6

    invoke-virtual {v15, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v9

    if-eqz v5, :cond_8

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v5, v15, v7}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_5
    goto :goto_6

    :cond_6
    if-nez v10, :cond_7

    move-object v5, v13

    goto :goto_5

    :cond_7
    move-object v5, v14

    :goto_5
    invoke-virtual {v15, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    :goto_6
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    iget-object v8, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    move/from16 v12, p5

    move/from16 v4, p11

    invoke-static {v1, v12, v4}, Landroid/view/WindowLayout;->ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v31, v11

    move/from16 v9, v24

    goto/16 :goto_10

    :cond_9
    const/4 v4, 0x3

    if-eq v5, v4, :cond_19

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    nop

    move/from16 v30, v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    move/from16 v31, v11

    const/4 v11, 0x1

    invoke-virtual {v2, v4, v9, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    iget v11, v9, Landroid/graphics/Insets;->top:I

    if-lez v11, :cond_a

    iget v11, v8, Landroid/graphics/Rect;->top:I

    if-lez v11, :cond_a

    iget v11, v9, Landroid/graphics/Insets;->top:I

    move-object/from16 v21, v9

    iget v9, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_a
    move-object/from16 v21, v9

    :goto_7
    const/4 v9, 0x1

    if-ne v5, v9, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v9, v11, :cond_b

    const v9, -0x186a0

    iput v9, v8, Landroid/graphics/Rect;->top:I

    const v11, 0x186a0

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_b
    const v9, -0x186a0

    const v11, 0x186a0

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iput v11, v8, Landroid/graphics/Rect;->right:I

    :cond_c
    :goto_8
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x10000

    and-int/2addr v9, v11

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    if-eqz v10, :cond_13

    if-eqz v9, :cond_13

    if-eqz v5, :cond_f

    const/4 v11, 0x1

    if-ne v5, v11, :cond_e

    goto :goto_a

    :cond_e
    move/from16 v32, v5

    move/from16 v21, v9

    goto :goto_d

    :cond_f
    :goto_a
    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v11

    move/from16 v32, v5

    move/from16 v5, p8

    invoke-virtual {v2, v4, v11, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;

    move-result-object v11

    iget v5, v11, Landroid/graphics/Insets;->left:I

    move/from16 v21, v9

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v9

    if-lt v5, v9, :cond_10

    const v5, -0x186a0

    iput v5, v8, Landroid/graphics/Rect;->left:I

    goto :goto_b

    :cond_10
    const v5, -0x186a0

    :goto_b
    iget v9, v11, Landroid/graphics/Insets;->top:I

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    if-lt v9, v5, :cond_11

    const v5, -0x186a0

    iput v5, v8, Landroid/graphics/Rect;->top:I

    :cond_11
    iget v5, v11, Landroid/graphics/Insets;->right:I

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v9

    if-lt v5, v9, :cond_12

    const v5, 0x186a0

    iput v5, v8, Landroid/graphics/Rect;->right:I

    goto :goto_c

    :cond_12
    const v5, 0x186a0

    :goto_c
    iget v9, v11, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    if-lt v9, v5, :cond_14

    const v5, 0x186a0

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_d

    :cond_13
    move/from16 v32, v5

    move/from16 v21, v9

    :cond_14
    :goto_d
    const/16 v5, 0x7db

    move/from16 v9, v24

    if-ne v9, v5, :cond_15

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    const v11, 0x186a0

    if-eq v5, v11, :cond_15

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    const/4 v11, 0x1

    invoke-virtual {v2, v4, v5, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_15

    const v5, 0x186a0

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    :cond_15
    if-eqz v13, :cond_16

    if-nez v10, :cond_16

    const/4 v5, 0x1

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v11

    if-nez v11, :cond_17

    if-eqz v10, :cond_17

    const/4 v11, 0x1

    if-eq v9, v11, :cond_17

    const/4 v11, 0x1

    goto :goto_f

    :cond_17
    const/4 v11, 0x0

    :goto_f
    if-nez v5, :cond_18

    if-nez v11, :cond_18

    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v6, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    :cond_18
    invoke-virtual {v14, v8}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_10

    :cond_19
    move/from16 v32, v5

    move/from16 v30, v9

    move/from16 v31, v11

    move/from16 v9, v24

    :goto_10
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_11

    :cond_1a
    const/4 v2, 0x0

    :goto_11
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-eqz v2, :cond_1b

    const/16 v5, 0x7da

    if-eq v9, v5, :cond_1b

    if-nez v4, :cond_1b

    const v5, -0x186a0

    iput v5, v14, Landroid/graphics/Rect;->left:I

    iput v5, v14, Landroid/graphics/Rect;->top:I

    const v5, 0x186a0

    iput v5, v14, Landroid/graphics/Rect;->right:I

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    :cond_1b
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p9, v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_12

    :cond_1c
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v24, v7

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_1d

    const/4 v7, 0x1

    goto :goto_13

    :cond_1d
    const/4 v7, 0x0

    :goto_13
    move/from16 v18, p6

    move/from16 v20, p7

    move-object/from16 v33, v8

    const/4 v8, -0x1

    move/from16 v34, v9

    move/from16 v9, v18

    if-eq v9, v8, :cond_1f

    if-eqz v7, :cond_1e

    goto :goto_14

    :cond_1e
    move v8, v9

    goto :goto_15

    :cond_1f
    :goto_14
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v8, :cond_20

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_15

    :cond_20
    move v8, v11

    :goto_15
    move/from16 v35, v10

    move/from16 v9, v20

    const/4 v10, -0x1

    if-eq v9, v10, :cond_21

    if-eqz v7, :cond_23

    :cond_21
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v10, :cond_22

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_16

    :cond_22
    move v10, v6

    :goto_16
    move/from16 v20, v10

    move/from16 v9, v20

    :cond_23
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x4000

    const/high16 v20, 0x3f000000    # 0.5f

    if-eqz v10, :cond_28

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v10, :cond_24

    move v10, v11

    goto :goto_17

    :cond_24
    if-eqz v5, :cond_25

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v10, v10

    mul-float v10, v10, p9

    add-float v10, v10, v20

    float-to-int v10, v10

    goto :goto_17

    :cond_25
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_17
    move/from16 v18, v10

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v10, :cond_26

    move v10, v6

    move/from16 v37, v8

    move v8, v10

    move-object/from16 v36, v13

    move/from16 v10, v18

    goto :goto_19

    :cond_26
    if-eqz v5, :cond_27

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v10, v10

    mul-float v10, v10, p9

    add-float v10, v10, v20

    float-to-int v10, v10

    move/from16 v37, v8

    move v8, v10

    move-object/from16 v36, v13

    move/from16 v10, v18

    goto :goto_19

    :cond_27
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v8

    move v8, v10

    move-object/from16 v36, v13

    move/from16 v10, v18

    goto :goto_19

    :cond_28
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v36, v13

    const/4 v13, -0x1

    if-ne v10, v13, :cond_29

    move v10, v11

    goto :goto_18

    :cond_29
    if-eqz v5, :cond_2a

    int-to-float v10, v8

    mul-float v10, v10, p9

    add-float v10, v10, v20

    float-to-int v10, v10

    goto :goto_18

    :cond_2a
    move v10, v8

    :goto_18
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v8

    const/4 v8, -0x1

    if-ne v13, v8, :cond_2b

    move v8, v6

    goto :goto_19

    :cond_2b
    if-eqz v5, :cond_2c

    int-to-float v8, v9

    mul-float v8, v8, p9

    add-float v8, v8, v20

    float-to-int v8, v8

    goto :goto_19

    :cond_2c
    move v8, v9

    :goto_19
    if-eqz v5, :cond_2d

    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v13

    mul-float v13, v13, p9

    move/from16 v38, v5

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    mul-float v5, v5, p9

    goto :goto_1a

    :cond_2d
    move/from16 v38, v5

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v5

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    :goto_1a
    if-eqz v4, :cond_2e

    move/from16 v39, v9

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x4000

    if-nez v9, :cond_2f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1b

    :cond_2e
    move/from16 v39, v9

    :cond_2f
    :goto_1b
    const/4 v9, 0x5

    if-ne v12, v9, :cond_30

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v9, v12, :cond_30

    const/4 v9, 0x1

    goto :goto_1c

    :cond_30
    const/4 v9, 0x0

    :goto_1c
    if-eqz v4, :cond_32

    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v40, v4

    const/4 v4, 0x1

    if-eq v12, v4, :cond_31

    if-nez v9, :cond_31

    if-nez v2, :cond_31

    goto :goto_1d

    :cond_31
    const/4 v4, 0x0

    goto :goto_1d

    :cond_32
    move/from16 v40, v4

    const/4 v4, 0x1

    :goto_1d
    iget v12, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v41, v2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v42, v9

    int-to-float v9, v11

    mul-float/2addr v2, v9

    add-float/2addr v2, v13

    float-to-int v2, v2

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v43, v11

    int-to-float v11, v6

    mul-float/2addr v9, v11

    add-float/2addr v9, v5

    float-to-int v9, v9

    move-object v11, v15

    move v15, v12

    move/from16 v16, v10

    move/from16 v17, v8

    move-object/from16 v18, v11

    move/from16 v19, v2

    move/from16 v20, v9

    move-object/from16 v21, v23

    invoke-static/range {v15 .. v21}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    if-eqz v4, :cond_33

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v9, v23

    invoke-static {v2, v14, v9}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1e

    :cond_33
    move-object/from16 v9, v23

    :goto_1e
    if-eqz v7, :cond_34

    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v3, v14, v9, v2}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_34
    return-void
.end method
