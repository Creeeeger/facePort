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

    .line 69
    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .locals 9
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "maxBounds"    # Landroid/graphics/Rect;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "winFrame"    # Landroid/graphics/Rect;
    .param p5, "dragResizing"    # Z
    .param p6, "outSurfaceSize"    # Landroid/graphics/Point;

    .line 425
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    .line 427
    move v0, p2

    .line 428
    .local v0, "width":I
    move v1, p3

    .local v1, "height":I
    goto :goto_0

    .line 433
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    if-eqz p5, :cond_1

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 437
    .restart local v0    # "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 439
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 440
    .restart local v0    # "width":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 446
    .restart local v1    # "height":I
    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 447
    const/4 v0, 0x1

    .line 449
    :cond_2
    if-ge v1, v2, :cond_3

    .line 450
    const/4 v1, 0x1

    .line 455
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 456
    .local v2, "dssScale":F
    const/4 v3, 0x0

    .line 457
    .local v3, "isDSSEnabled":Z
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_5

    .line 459
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v6, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Landroid/app/IActivityManager;->getScalingFactor(Ljava/lang/String;)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 460
    cmpg-float v4, v2, v5

    if-gez v4, :cond_4

    .line 461
    const/4 v3, 0x1

    .line 465
    :cond_4
    goto :goto_1

    .line 463
    :catch_0
    move-exception v4

    .line 464
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getScalingFactor() on IActivityManager. e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 468
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 469
    .local v4, "surfaceInsets":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 470
    .local v6, "screenSurfaceInsets":Landroid/graphics/Rect;
    div-float/2addr v5, v2

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 471
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    add-int/2addr v0, v5

    .line 472
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    .line 473
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 474
    .local v5, "result":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 475
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 476
    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 477
    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 478
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 479
    .end local v4    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v5    # "result":Landroid/graphics/Rect;
    .end local v6    # "screenSurfaceInsets":Landroid/graphics/Rect;
    goto :goto_2

    .line 481
    :cond_6
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 482
    .restart local v4    # "surfaceInsets":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 483
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 484
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 486
    .end local v4    # "surfaceInsets":Landroid/graphics/Rect;
    :goto_2
    return-void
.end method

.method private static blacklist ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 4
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "windowingMode"    # I
    .param p2, "stageType"    # I

    .line 492
    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 493
    return v0

    .line 496
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 497
    return v0

    .line 501
    :cond_1
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 502
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 503
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    goto :goto_0

    .line 508
    :cond_2
    return v0

    .line 506
    :cond_3
    :goto_0
    return v3

    .line 510
    :cond_4
    return v3
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V
    .locals 13
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p9, "attachedWindowFrame"    # Landroid/graphics/Rect;
    .param p10, "compatScale"    # F
    .param p11, "outFrames"    # Landroid/window/ClientWindowFrames;

    .line 88
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;I)V

    .line 92
    return-void
.end method

.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;I)V
    .locals 47
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p9, "attachedWindowFrame"    # Landroid/graphics/Rect;
    .param p10, "compatScale"    # F
    .param p11, "outFrames"    # Landroid/window/ClientWindowFrames;
    .param p12, "stageType"    # I

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p11

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 100
    .local v8, "type":I
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    .local v9, "fl":I
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 102
    .local v10, "pfl":I
    and-int/lit16 v0, v9, 0x100

    const/16 v11, 0x100

    if-ne v0, v11, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v11, v0

    .line 103
    .local v11, "layoutInScreen":Z
    iget-object v14, v7, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 104
    .local v14, "outDisplayFrame":Landroid/graphics/Rect;
    iget-object v15, v7, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 105
    .local v15, "outParentFrame":Landroid/graphics/Rect;
    iget-object v13, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 108
    .local v13, "outFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v12

    .line 108
    invoke-virtual {v3, v5, v0, v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v12

    .line 110
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v22

    .line 111
    .local v22, "sides":I
    and-int/lit8 v0, v22, 0x1

    if-eqz v0, :cond_1

    iget v0, v12, Landroid/graphics/Insets;->left:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v23, v0

    .line 112
    .local v23, "left":I
    and-int/lit8 v0, v22, 0x2

    if-eqz v0, :cond_2

    iget v0, v12, Landroid/graphics/Insets;->top:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move/from16 v24, v0

    .line 113
    .local v24, "top":I
    and-int/lit8 v0, v22, 0x4

    if-eqz v0, :cond_3

    iget v0, v12, Landroid/graphics/Insets;->right:I

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move/from16 v25, v0

    .line 114
    .local v25, "right":I
    and-int/lit8 v0, v22, 0x8

    if-eqz v0, :cond_4

    iget v0, v12, Landroid/graphics/Insets;->bottom:I

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move/from16 v26, v0

    .line 115
    .local v26, "bottom":I
    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v0, v23

    move/from16 v27, v9

    .end local v9    # "fl":I
    .local v27, "fl":I
    iget v9, v5, Landroid/graphics/Rect;->top:I

    add-int v9, v9, v24

    move-object/from16 v28, v12

    .end local v12    # "insets":Landroid/graphics/Insets;
    .local v28, "insets":Landroid/graphics/Insets;
    iget v12, v5, Landroid/graphics/Rect;->right:I

    sub-int v12, v12, v25

    move-object/from16 v29, v13

    .end local v13    # "outFrame":Landroid/graphics/Rect;
    .local v29, "outFrame":Landroid/graphics/Rect;
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v13, v26

    invoke-virtual {v14, v0, v9, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    if-nez p9, :cond_6

    .line 119
    invoke-virtual {v15, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v10

    if-eqz v0, :cond_8

    .line 121
    const/16 v0, 0x13

    invoke-virtual {v3, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 122
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_5

    .line 123
    const/4 v9, 0x0

    invoke-virtual {v0, v15, v9}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 126
    .end local v0    # "source":Landroid/view/InsetsSource;
    :cond_5
    goto :goto_6

    .line 128
    :cond_6
    if-nez v11, :cond_7

    move-object/from16 v0, p9

    goto :goto_5

    :cond_7
    move-object v0, v14

    :goto_5
    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    :cond_8
    :goto_6
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 133
    .local v9, "cutoutMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v12

    .line 134
    .local v12, "cutout":Landroid/view/DisplayCutout;
    iget-object v13, v1, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 135
    .local v13, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    invoke-virtual {v13, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 136
    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 138
    move/from16 v5, p12

    invoke-static {v2, v6, v5}, Landroid/view/WindowLayout;->ignoreCutoutMode(Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    const/high16 v18, 0x10000

    const/4 v5, 0x3

    if-eqz v0, :cond_9

    move/from16 v30, v10

    goto/16 :goto_10

    .line 141
    :cond_9
    if-eq v9, v5, :cond_1a

    invoke-virtual {v12}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 145
    .local v0, "displayFrame":Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v17

    .line 146
    .local v17, "statusBarSource":Landroid/view/InsetsSource;
    if-eqz v17, :cond_a

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move/from16 v30, v10

    .end local v10    # "pfl":I
    .local v30, "pfl":I
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-le v5, v10, :cond_b

    .line 150
    nop

    .line 151
    invoke-virtual/range {v17 .. v17}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v13, Landroid/graphics/Rect;->top:I

    goto :goto_7

    .line 146
    .end local v30    # "pfl":I
    .restart local v10    # "pfl":I
    :cond_a
    move/from16 v30, v10

    .line 153
    .end local v10    # "pfl":I
    .restart local v30    # "pfl":I
    :cond_b
    :goto_7
    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v10, v5, :cond_c

    .line 155
    const/high16 v5, -0x80000000

    iput v5, v13, Landroid/graphics/Rect;->top:I

    .line 156
    const v10, 0x7fffffff

    iput v10, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 158
    :cond_c
    const/high16 v5, -0x80000000

    const v10, 0x7fffffff

    iput v5, v13, Landroid/graphics/Rect;->left:I

    .line 159
    iput v10, v13, Landroid/graphics/Rect;->right:I

    .line 162
    :cond_d
    :goto_8
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v5, v5, v18

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    .line 163
    .local v5, "layoutInsetDecor":Z
    :goto_9
    if-eqz v11, :cond_14

    if-eqz v5, :cond_14

    if-eqz v9, :cond_10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v32, v5

    goto :goto_d

    .line 166
    :cond_10
    :goto_a
    nop

    .line 167
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v10

    .line 166
    move/from16 v32, v5

    move-object/from16 v5, p8

    .end local v5    # "layoutInsetDecor":Z
    .local v32, "layoutInsetDecor":Z
    invoke-virtual {v3, v0, v10, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ILandroid/view/InsetsVisibilities;)Landroid/graphics/Insets;

    move-result-object v10

    .line 168
    .local v10, "systemBarsInsets":Landroid/graphics/Insets;
    iget v5, v10, Landroid/graphics/Insets;->left:I

    if-lez v5, :cond_11

    .line 169
    const/high16 v5, -0x80000000

    iput v5, v13, Landroid/graphics/Rect;->left:I

    goto :goto_b

    .line 168
    :cond_11
    const/high16 v5, -0x80000000

    .line 171
    :goto_b
    iget v5, v10, Landroid/graphics/Insets;->top:I

    if-lez v5, :cond_12

    .line 172
    const/high16 v5, -0x80000000

    iput v5, v13, Landroid/graphics/Rect;->top:I

    .line 174
    :cond_12
    iget v5, v10, Landroid/graphics/Insets;->right:I

    if-lez v5, :cond_13

    .line 175
    const v5, 0x7fffffff

    iput v5, v13, Landroid/graphics/Rect;->right:I

    goto :goto_c

    .line 174
    :cond_13
    const v5, 0x7fffffff

    .line 177
    :goto_c
    iget v5, v10, Landroid/graphics/Insets;->bottom:I

    if-lez v5, :cond_15

    .line 178
    const v5, 0x7fffffff

    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_d

    .line 163
    .end local v10    # "systemBarsInsets":Landroid/graphics/Insets;
    .end local v32    # "layoutInsetDecor":Z
    .restart local v5    # "layoutInsetDecor":Z
    :cond_14
    move/from16 v32, v5

    .line 181
    .end local v5    # "layoutInsetDecor":Z
    .restart local v32    # "layoutInsetDecor":Z
    :cond_15
    :goto_d
    const/16 v5, 0x7db

    if-ne v8, v5, :cond_16

    .line 182
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v10

    .line 183
    .local v10, "navSource":Landroid/view/InsetsSource;
    if-eqz v10, :cond_16

    invoke-virtual {v10, v0, v5}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    if-lez v3, :cond_16

    .line 185
    const v3, 0x7fffffff

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    .line 188
    .end local v10    # "navSource":Landroid/view/InsetsSource;
    :cond_16
    if-eqz p9, :cond_17

    if-nez v11, :cond_17

    const/4 v3, 0x1

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    .line 192
    .local v3, "attachedInParent":Z
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v5

    if-nez v5, :cond_18

    if-eqz v11, :cond_18

    const/4 v5, 0x1

    if-eq v8, v5, :cond_18

    const/4 v5, 0x1

    goto :goto_f

    :cond_18
    const/4 v5, 0x0

    .line 200
    .local v5, "floatingInScreenWindow":Z
    :goto_f
    if-nez v3, :cond_19

    if-nez v5, :cond_19

    .line 201
    iget-object v10, v1, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    invoke-virtual {v15, v13}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 203
    iget-object v10, v1, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v16, 0x1

    xor-int/lit8 v10, v10, 0x1

    iput-boolean v10, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 205
    :cond_19
    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_10

    .line 141
    .end local v0    # "displayFrame":Landroid/graphics/Rect;
    .end local v3    # "attachedInParent":Z
    .end local v5    # "floatingInScreenWindow":Z
    .end local v17    # "statusBarSource":Landroid/view/InsetsSource;
    .end local v30    # "pfl":I
    .end local v32    # "layoutInsetDecor":Z
    .local v10, "pfl":I
    :cond_1a
    move/from16 v30, v10

    .line 208
    .end local v10    # "pfl":I
    .restart local v30    # "pfl":I
    :goto_10
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_11

    :cond_1b
    const/4 v0, 0x0

    :goto_11
    move v3, v0

    .line 209
    .local v3, "noLimits":Z
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v5

    .line 213
    .local v5, "inMultiWindowMode":Z
    if-eqz v3, :cond_1c

    const/16 v0, 0x7da

    if-eq v8, v0, :cond_1c

    if-nez v5, :cond_1c

    .line 214
    const v0, -0x186a0

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 215
    iput v0, v14, Landroid/graphics/Rect;->top:I

    .line 216
    const v0, 0x186a0

    iput v0, v14, Landroid/graphics/Rect;->right:I

    .line 217
    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    .line 220
    :cond_1c
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v10, p10, v0

    if-eqz v10, :cond_1d

    const/4 v10, 0x1

    goto :goto_12

    :cond_1d
    const/4 v10, 0x0

    .line 221
    .local v10, "hasCompatScale":Z
    :goto_12
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 222
    .local v7, "pw":I
    move/from16 v31, v8

    .end local v8    # "type":I
    .local v31, "type":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 223
    .local v8, "ph":I
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_13

    :cond_1e
    const/4 v0, 0x0

    :goto_13
    move/from16 v32, v0

    .line 225
    .local v32, "extendedByCutout":Z
    move/from16 v21, p6

    .line 226
    .local v21, "rw":I
    move/from16 v33, p7

    .line 231
    .local v33, "rh":I
    const/high16 v34, 0x3f800000    # 1.0f

    .line 232
    .local v34, "dssScale":F
    const/16 v35, 0x0

    .line 233
    .local v35, "isDSSEnabled":Z
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->DSS_ENABLED:Z

    if-eqz v0, :cond_20

    .line 235
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v36, v9

    .end local v9    # "cutoutMode":I
    .local v36, "cutoutMode":I
    :try_start_1
    iget-object v9, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9}, Landroid/app/IActivityManager;->getScalingFactor(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v34, v0

    .line 236
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v34, v0

    if-gez v0, :cond_1f

    .line 237
    const/16 v35, 0x1

    .line 241
    :cond_1f
    move/from16 v37, v11

    move-object/from16 v38, v12

    goto :goto_15

    .line 239
    :catch_0
    move-exception v0

    goto :goto_14

    .end local v36    # "cutoutMode":I
    .restart local v9    # "cutoutMode":I
    :catch_1
    move-exception v0

    move/from16 v36, v9

    .line 240
    .end local v9    # "cutoutMode":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v36    # "cutoutMode":I
    :goto_14
    sget-object v9, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    move/from16 v37, v11

    .end local v11    # "layoutInScreen":Z
    .local v37, "layoutInScreen":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v12

    .end local v12    # "cutout":Landroid/view/DisplayCutout;
    .local v38, "cutout":Landroid/view/DisplayCutout;
    const-string v12, "getScalingFactor() on IActivityManager. e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v36    # "cutoutMode":I
    .end local v37    # "layoutInScreen":Z
    .end local v38    # "cutout":Landroid/view/DisplayCutout;
    .restart local v9    # "cutoutMode":I
    .restart local v11    # "layoutInScreen":Z
    .restart local v12    # "cutout":Landroid/view/DisplayCutout;
    :cond_20
    move/from16 v36, v9

    move/from16 v37, v11

    move-object/from16 v38, v12

    .line 250
    .end local v9    # "cutoutMode":I
    .end local v11    # "layoutInScreen":Z
    .end local v12    # "cutout":Landroid/view/DisplayCutout;
    .restart local v36    # "cutoutMode":I
    .restart local v37    # "layoutInScreen":Z
    .restart local v38    # "cutout":Landroid/view/DisplayCutout;
    :goto_15
    const/4 v0, -0x1

    move/from16 v9, v21

    .end local v21    # "rw":I
    .local v9, "rw":I
    if-eq v9, v0, :cond_21

    if-eqz v32, :cond_23

    .line 251
    :cond_21
    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v11, :cond_22

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_16

    :cond_22
    move v11, v7

    :goto_16
    move/from16 v21, v11

    move/from16 v9, v21

    .line 253
    :cond_23
    move/from16 v11, v33

    .end local v33    # "rh":I
    .local v11, "rh":I
    if-eq v11, v0, :cond_24

    if-eqz v32, :cond_26

    .line 254
    :cond_24
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v12, :cond_25

    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_17

    :cond_25
    move v12, v8

    :goto_17
    move/from16 v33, v12

    move/from16 v11, v33

    .line 257
    :cond_26
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v12, v12, 0x4000

    const/high16 v17, 0x3f000000    # 0.5f

    if-eqz v12, :cond_2e

    .line 258
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v0, :cond_27

    .line 259
    move v0, v7

    .local v0, "w":I
    goto :goto_18

    .line 260
    .end local v0    # "w":I
    :cond_27
    if-eqz v10, :cond_28

    .line 261
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float v0, v0, p10

    add-float v0, v0, v17

    float-to-int v0, v0

    .line 263
    .restart local v0    # "w":I
    if-eqz v35, :cond_29

    .line 264
    int-to-float v12, v0

    div-float v12, v12, v34

    add-float v12, v12, v17

    float-to-int v0, v12

    goto :goto_18

    .line 268
    .end local v0    # "w":I
    :cond_28
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 271
    .restart local v0    # "w":I
    if-eqz v35, :cond_29

    .line 272
    int-to-float v12, v0

    div-float v12, v12, v34

    add-float v12, v12, v17

    float-to-int v0, v12

    .line 276
    :cond_29
    :goto_18
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v12, :cond_2a

    .line 277
    move v12, v8

    .local v12, "h":I
    goto/16 :goto_1a

    .line 278
    .end local v12    # "h":I
    :cond_2a
    if-eqz v10, :cond_2c

    .line 279
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v12, v12

    mul-float v12, v12, p10

    add-float v12, v12, v17

    float-to-int v12, v12

    .line 282
    .restart local v12    # "h":I
    if-eqz v35, :cond_2b

    .line 283
    move/from16 v21, v0

    .end local v0    # "w":I
    .local v21, "w":I
    int-to-float v0, v12

    div-float v0, v0, v34

    add-float v0, v0, v17

    float-to-int v12, v0

    move/from16 v0, v21

    goto/16 :goto_1a

    .line 282
    .end local v21    # "w":I
    .restart local v0    # "w":I
    :cond_2b
    move/from16 v21, v0

    .end local v0    # "w":I
    .restart local v21    # "w":I
    goto/16 :goto_1a

    .line 287
    .end local v12    # "h":I
    .end local v21    # "w":I
    .restart local v0    # "w":I
    :cond_2c
    move/from16 v21, v0

    .end local v0    # "w":I
    .restart local v21    # "w":I
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 290
    .restart local v12    # "h":I
    if-eqz v35, :cond_2d

    .line 291
    int-to-float v0, v12

    div-float v0, v0, v34

    add-float v0, v0, v17

    float-to-int v12, v0

    move/from16 v0, v21

    goto/16 :goto_1a

    .line 290
    :cond_2d
    move/from16 v0, v21

    goto :goto_1a

    .line 296
    .end local v12    # "h":I
    .end local v21    # "w":I
    :cond_2e
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v0, :cond_2f

    .line 297
    move v12, v7

    move v0, v12

    .local v12, "w":I
    goto :goto_19

    .line 298
    .end local v12    # "w":I
    :cond_2f
    if-eqz v10, :cond_31

    .line 299
    int-to-float v12, v9

    mul-float v12, v12, p10

    add-float v12, v12, v17

    float-to-int v12, v12

    .line 302
    .restart local v12    # "w":I
    if-eqz v35, :cond_30

    .line 303
    int-to-float v0, v12

    div-float v0, v0, v34

    add-float v0, v0, v17

    float-to-int v0, v0

    .end local v12    # "w":I
    .restart local v0    # "w":I
    goto :goto_19

    .line 302
    .end local v0    # "w":I
    .restart local v12    # "w":I
    :cond_30
    move v0, v12

    goto :goto_19

    .line 307
    .end local v12    # "w":I
    :cond_31
    move v0, v9

    .line 310
    .restart local v0    # "w":I
    if-eqz v35, :cond_32

    .line 311
    int-to-float v12, v0

    div-float v12, v12, v34

    add-float v12, v12, v17

    float-to-int v0, v12

    .line 315
    :cond_32
    :goto_19
    iget v12, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v33, v0

    const/4 v0, -0x1

    .end local v0    # "w":I
    .local v33, "w":I
    if-ne v12, v0, :cond_33

    .line 316
    move v12, v8

    move/from16 v0, v33

    .local v12, "h":I
    goto :goto_1a

    .line 317
    .end local v12    # "h":I
    :cond_33
    if-eqz v10, :cond_35

    .line 318
    int-to-float v0, v11

    mul-float v0, v0, p10

    add-float v0, v0, v17

    float-to-int v12, v0

    .line 321
    .restart local v12    # "h":I
    if-eqz v35, :cond_34

    .line 322
    int-to-float v0, v12

    div-float v0, v0, v34

    add-float v0, v0, v17

    float-to-int v12, v0

    move/from16 v0, v33

    goto :goto_1a

    .line 321
    :cond_34
    move/from16 v0, v33

    goto :goto_1a

    .line 327
    .end local v12    # "h":I
    :cond_35
    move v12, v11

    .line 330
    .restart local v12    # "h":I
    if-eqz v35, :cond_36

    .line 331
    int-to-float v0, v12

    div-float v0, v0, v34

    add-float v0, v0, v17

    float-to-int v12, v0

    move/from16 v0, v33

    goto :goto_1a

    .line 330
    :cond_36
    move/from16 v0, v33

    .line 337
    .end local v33    # "w":I
    .restart local v0    # "w":I
    :goto_1a
    if-eqz v10, :cond_37

    .line 338
    move/from16 v33, v9

    .end local v9    # "rw":I
    .local v33, "rw":I
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    mul-float v9, v9, p10

    .line 339
    .local v9, "x":F
    move/from16 v17, v9

    .end local v9    # "x":F
    .local v17, "x":F
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v9, v9

    mul-float v9, v9, p10

    move/from16 v46, v17

    move/from16 v17, v9

    move/from16 v9, v46

    .local v9, "y":F
    goto :goto_1b

    .line 341
    .end local v17    # "x":F
    .end local v33    # "rw":I
    .local v9, "rw":I
    :cond_37
    move/from16 v33, v9

    .end local v9    # "rw":I
    .restart local v33    # "rw":I
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    .line 342
    .local v9, "x":F
    move/from16 v17, v9

    .end local v9    # "x":F
    .restart local v17    # "x":F
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v9, v9

    move/from16 v46, v17

    move/from16 v17, v9

    move/from16 v9, v46

    .line 346
    .restart local v9    # "x":F
    .local v17, "y":F
    :goto_1b
    if-eqz v35, :cond_38

    .line 347
    div-float v9, v9, v34

    .line 348
    div-float v17, v17, v34

    move/from16 v39, v17

    goto :goto_1c

    .line 346
    :cond_38
    move/from16 v39, v17

    .line 353
    .end local v17    # "y":F
    .local v39, "y":F
    :goto_1c
    move/from16 v40, v10

    .end local v10    # "hasCompatScale":Z
    .local v40, "hasCompatScale":Z
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_39

    const/4 v10, 0x1

    goto :goto_1d

    :cond_39
    const/4 v10, 0x0

    .line 354
    .local v10, "isMultiWindowMenuPopup":Z
    :goto_1d
    if-eqz v10, :cond_3a

    move/from16 v41, v10

    goto :goto_1e

    .line 357
    :cond_3a
    if-eqz v5, :cond_3b

    move/from16 v41, v10

    .end local v10    # "isMultiWindowMenuPopup":Z
    .local v41, "isMultiWindowMenuPopup":Z
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v10, v10, v18

    if-nez v10, :cond_3c

    .line 361
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 362
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1e

    .line 357
    .end local v41    # "isMultiWindowMenuPopup":Z
    .restart local v10    # "isMultiWindowMenuPopup":Z
    :cond_3b
    move/from16 v41, v10

    .line 366
    .end local v10    # "isMultiWindowMenuPopup":Z
    .restart local v41    # "isMultiWindowMenuPopup":Z
    :cond_3c
    :goto_1e
    const/4 v10, 0x5

    if-ne v6, v10, :cond_3d

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v10, v6, :cond_3d

    const/4 v6, 0x1

    goto :goto_1f

    :cond_3d
    const/4 v6, 0x0

    .line 377
    .local v6, "isStartingWindowInFreeform":Z
    :goto_1f
    if-eqz v5, :cond_3f

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v42, v5

    const/4 v5, 0x1

    .end local v5    # "inMultiWindowMode":Z
    .local v42, "inMultiWindowMode":Z
    if-eq v10, v5, :cond_3e

    if-nez v6, :cond_3e

    if-nez v3, :cond_3e

    goto :goto_20

    :cond_3e
    const/16 v20, 0x0

    goto :goto_21

    .end local v42    # "inMultiWindowMode":Z
    .restart local v5    # "inMultiWindowMode":Z
    :cond_3f
    move/from16 v42, v5

    const/4 v5, 0x1

    .end local v5    # "inMultiWindowMode":Z
    .restart local v42    # "inMultiWindowMode":Z
    :goto_20
    move/from16 v20, v5

    :goto_21
    move/from16 v5, v20

    .line 382
    .local v5, "fitToDisplay":Z
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v43, v3

    .end local v3    # "noLimits":Z
    .local v43, "noLimits":Z
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v44, v6

    .end local v6    # "isStartingWindowInFreeform":Z
    .local v44, "isStartingWindowInFreeform":Z
    int-to-float v6, v7

    mul-float/2addr v3, v6

    add-float/2addr v3, v9

    float-to-int v3, v3

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v45, v7

    .end local v7    # "pw":I
    .local v45, "pw":I
    int-to-float v7, v8

    mul-float/2addr v6, v7

    add-float v6, v39, v6

    float-to-int v6, v6

    move-object v7, v15

    .end local v15    # "outParentFrame":Landroid/graphics/Rect;
    .local v7, "outParentFrame":Landroid/graphics/Rect;
    move v15, v10

    move/from16 v16, v0

    move/from16 v17, v12

    move-object/from16 v18, v7

    move/from16 v19, v3

    move/from16 v20, v6

    move-object/from16 v21, v29

    invoke-static/range {v15 .. v21}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 387
    if-eqz v5, :cond_40

    .line 388
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v6, v29

    .end local v29    # "outFrame":Landroid/graphics/Rect;
    .local v6, "outFrame":Landroid/graphics/Rect;
    invoke-static {v3, v14, v6}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_22

    .line 387
    .end local v6    # "outFrame":Landroid/graphics/Rect;
    .restart local v29    # "outFrame":Landroid/graphics/Rect;
    :cond_40
    move-object/from16 v6, v29

    .line 391
    .end local v29    # "outFrame":Landroid/graphics/Rect;
    .restart local v6    # "outFrame":Landroid/graphics/Rect;
    :goto_22
    if-eqz v32, :cond_41

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 392
    iget-object v3, v1, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 395
    const/high16 v3, 0x11000000

    .line 396
    .local v3, "clipFlags":I
    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v15, -0x11000001

    and-int/2addr v10, v15

    iget-object v15, v1, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v10, v4, v15}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 399
    iget-object v10, v1, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 400
    iget-object v10, v1, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 418
    .end local v3    # "clipFlags":I
    :cond_41
    return-void
.end method
