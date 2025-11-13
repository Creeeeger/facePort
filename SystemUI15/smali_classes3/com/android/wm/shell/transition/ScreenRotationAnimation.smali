.class public final Lcom/android/wm/shell/transition/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimHint:I

.field public final mAnimLeash:Landroid/view/SurfaceControl;

.field public final mBackColorSurface:Landroid/view/SurfaceControl;

.field public final mContext:Landroid/content/Context;

.field public final mEndHeight:I

.field public final mEndRotation:I

.field public final mEndWidth:I

.field public mFadeInOutAnimationNeeded:Z

.field public mRotateAlphaAnimation:Landroid/view/animation/Animation;

.field public mRotateEnterAnimation:Landroid/view/animation/Animation;

.field public mRotateExitAnimation:Landroid/view/animation/Animation;

.field public final mScreenshotLayer:Landroid/view/SurfaceControl;

.field public final mStartHeight:I

.field public final mStartLuma:F

.field public final mStartRotation:I

.field public final mStartWidth:I

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mTmpFloats:[F

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/TransactionPool;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v6, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    const-string v9, "ShellTransitions"

    const-string v10, "Not use \"BackColorSurface\" layer for change="

    const-string v11, "RotationLayer"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v12, 0x9

    new-array v12, v12, [F

    iput-object v12, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    move-object/from16 v13, p1

    iput-object v13, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move-object/from16 v13, p3

    iput-object v13, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    iput-object v13, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    iput v14, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    iput v15, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v12

    iput v12, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v12

    iput v12, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    new-instance v12, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v12, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v12, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    const-string v7, "ShellRotationAnimation"

    invoke-virtual {v12, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    const-string v3, "Animation leash of screenshot rotation"

    invoke-virtual {v12, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v12

    move-object/from16 v17, v10

    if-eqz v12, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v11

    iput-object v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v11, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->getSnapshotLuma()F

    move-result v11

    iput v11, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    move/from16 p3, v5

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v12, v13}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v12

    check-cast v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v12, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v12

    check-cast v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    new-instance v10, Landroid/graphics/Rect;

    move/from16 p3, v5

    const/4 v5, 0x0

    invoke-direct {v10, v5, v5, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v5

    invoke-static {v5}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "Unable to take screenshot of display"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v10, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v10, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v12, :cond_2

    const-string v12, "_WmShell"

    goto :goto_0

    :cond_2
    const-string v12, ""

    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    iput-object v10, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/16 v11, 0x1e

    const/4 v12, 0x1

    invoke-virtual {v6, v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-static {v6, v10, v5}, Lcom/android/internal/policy/TransitionAnimation;->configureScreenshotLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    invoke-virtual {v5}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v11

    invoke-virtual {v6, v10}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v10, :cond_3

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    invoke-virtual {v2, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    if-eq v4, v10, :cond_5

    const/4 v10, 0x2

    if-ne v4, v10, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-static {v11, v5, v13}, Lcom/android/internal/policy/TransitionAnimation;->getBorderLuma(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;Landroid/view/SurfaceControl;)F

    move-result v5

    iput v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    :cond_5
    :goto_1
    invoke-virtual {v11}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_2
    const v5, 0x1eab90

    invoke-virtual {v6, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v3, Landroid/graphics/Rect;

    move/from16 v10, p3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v13, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v3, :cond_6

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    if-eq v4, v3, :cond_8

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    goto :goto_4

    :cond_7
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v3, "BackColorSurface"

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartLuma:F

    const/4 v4, 0x3

    new-array v5, v4, [F

    const/4 v4, 0x0

    aput v3, v5, v4

    const/4 v4, 0x1

    aput v3, v5, v4

    const/4 v4, 0x2

    aput v3, v5, v4

    invoke-virtual {v6, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v9, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/window/TransitionInfo$Change;->isFadeInOutRotationNeeded()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    :cond_9
    iget-object v0, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_a

    goto/16 :goto_8

    :cond_a
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v2

    iget v3, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    iget v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    if-eqz v2, :cond_e

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_d

    const/4 v7, 0x2

    if-eq v2, v7, :cond_c

    const/4 v7, 0x3

    if-eq v2, v7, :cond_b

    goto :goto_7

    :cond_b
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v5, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v2, v4

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    :cond_c
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v5, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v2, v4

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    :cond_d
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2, v5, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    int-to-float v2, v3

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    :cond_e
    iget v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    if-le v2, v4, :cond_f

    const/4 v10, 0x1

    goto :goto_5

    :cond_f
    const/4 v10, 0x0

    :goto_5
    iget v5, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    if-le v5, v3, :cond_10

    const/4 v7, 0x1

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    :goto_6
    if-ne v10, v7, :cond_12

    if-ne v2, v4, :cond_11

    if-eq v5, v3, :cond_12

    :cond_11
    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v4, v5

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_12
    :goto_7
    iget-object v2, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    aget v0, v2, v3

    const/4 v3, 0x5

    aget v3, v2, v3

    iget-object v4, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v4, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v1, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v0, 0x4

    aget v7, v2, v0

    move-object/from16 v0, p4

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    if-nez v0, :cond_13

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_13
    return-void
.end method


# virtual methods
.method public final buildAnimation(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda9;FLcom/android/wm/shell/common/ShellExecutor;II)Z
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x2

    const/4 v6, 0x1

    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimHint:I

    if-eq v7, v6, :cond_2

    if-ne v7, v4, :cond_1

    goto :goto_0

    :cond_1
    move v8, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v8, v6

    :goto_1
    const v9, 0x10a00a1

    if-eqz v8, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    if-ne v7, v4, :cond_3

    const v3, 0x10a00a2

    goto :goto_2

    :cond_3
    const v3, 0x10a00a3

    :goto_2
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a00c7

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_7

    :cond_4
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_DISPLAY_CHANGE:Z

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, -0x1

    if-eq v3, v7, :cond_6

    if-eq v2, v7, :cond_6

    iget-object v4, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_7

    :cond_6
    iget v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndRotation:I

    iget v3, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartRotation:I

    invoke-static {v2, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v2

    iget-boolean v3, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mFadeInOutAnimationNeeded:Z

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v5, v2

    :goto_3
    if-eqz v5, :cond_e

    if-eq v5, v6, :cond_c

    if-eq v5, v4, :cond_a

    const/4 v2, 0x3

    if-eq v5, v2, :cond_8

    goto/16 :goto_7

    :cond_8
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a00cc

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v3, :cond_9

    const v3, 0x10a00b4

    goto :goto_4

    :cond_9
    const v3, 0x10a00cb

    :goto_4
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_7

    :cond_a
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a00c5

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v3, :cond_b

    const v3, 0x10a00b3

    goto :goto_5

    :cond_b
    const v3, 0x10a00c4

    :goto_5
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a00ce

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION:Z

    if-eqz v3, :cond_d

    const v3, 0x10a00b5

    goto :goto_6

    :cond_d
    const v3, 0x10a00cd

    :goto_6
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_7

    :cond_e
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a00c3

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    :goto_7
    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v3, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndWidth:I

    iget v4, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mEndHeight:I

    iget v5, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartWidth:I

    iget v7, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mStartHeight:I

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    const-wide/16 v9, 0x2710

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    if-eqz v8, :cond_f

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v8, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;

    iget-object v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v0, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, p2

    move-object/from16 v20, v0

    move-object/from16 v21, p4

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    goto :goto_8

    :cond_f
    iget-object v8, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v9, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v11, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v15}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mAnimLeash:Landroid/view/SurfaceControl;

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v0, v0, Lcom/android/wm/shell/transition/ScreenRotationAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, p2

    move-object/from16 v20, v0

    move-object/from16 v21, p4

    invoke-static/range {v16 .. v24}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;)V

    :goto_8
    return v6
.end method
