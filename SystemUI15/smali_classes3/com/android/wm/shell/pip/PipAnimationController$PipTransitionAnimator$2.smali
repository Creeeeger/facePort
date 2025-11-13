.class public final Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field public final mRectEvaluator:Landroid/animation/RectEvaluator;

.field public final synthetic val$adjustedSourceRectHint:Landroid/graphics/Rect;

.field public final synthetic val$direction:I

.field public final synthetic val$endValue:Landroid/graphics/Rect;

.field public final synthetic val$initialContainerRect:Landroid/graphics/Rect;

.field public final synthetic val$initialSourceValue:Landroid/graphics/Rect;

.field public final synthetic val$isInPipDirection:Z

.field public final synthetic val$isOutPipDirection:Z

.field public final synthetic val$lastEndRect:Landroid/graphics/Rect;

.field public final synthetic val$rotatedEndRect:Landroid/graphics/Rect;

.field public final synthetic val$rotationDelta:I

.field public final synthetic val$sourceHintRectInsets:Landroid/graphics/Rect;

.field public final synthetic val$startingAngle:F

.field public final synthetic val$zeroInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3

    move-object v0, p0

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    move v1, p9

    iput v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$startingAngle:F

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$adjustedSourceRectHint:Landroid/graphics/Rect;

    move v1, p11

    iput-boolean v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isInPipDirection:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$lastEndRect:Landroid/graphics/Rect;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$endValue:Landroid/graphics/Rect;

    move/from16 v1, p17

    iput v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    move/from16 v1, p20

    iput v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    const/4 v1, 0x0

    move-object p8, p0

    move-object p9, p1

    move-object p10, p2

    move p11, p3

    move-object p12, p4

    move-object/from16 p13, p5

    move-object/from16 p14, p6

    move-object/from16 p15, p7

    move/from16 p16, v1

    invoke-direct/range {p8 .. p16}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v1, Landroid/animation/RectEvaluator;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/animation/RectEvaluator;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method


# virtual methods
.method public final applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {v4, v1, v2, v3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v13, v8, v1}, Lcom/android/wm/shell/pip/PipContentOverlay;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    const/4 v14, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$lastEndRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$endValue:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    invoke-static {v4, v5, v6}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$lastEndRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v5}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    :goto_0
    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {v6, v1, v5, v4}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    if-ne v4, v14, :cond_4

    sub-float v4, v11, v1

    mul-float/2addr v7, v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v8, v8

    add-float/2addr v5, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    move v9, v1

    goto :goto_3

    :cond_4
    sub-float v4, v11, v1

    mul-float/2addr v5, v4

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v1

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v1, v3

    int-to-float v3, v8

    add-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    move v9, v2

    move v8, v7

    move v7, v5

    goto :goto_3

    :cond_5
    iget v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    if-ne v4, v14, :cond_6

    mul-float v4, v1, v7

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_2
    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    move v9, v1

    move v7, v4

    move v8, v5

    goto :goto_3

    :cond_6
    mul-float v4, v1, v5

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v1

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    iget v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    const/4 v11, 0x3

    if-ne v2, v11, :cond_7

    move v11, v14

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v2, p2

    move/from16 v16, v3

    move-object/from16 v3, p1

    move-object v15, v5

    move-object v5, v10

    move-object/from16 v17, v10

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)V

    iget v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v1

    xor-int/2addr v1, v14

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-object/from16 v2, v17

    invoke-virtual {v1, v13, v12, v15, v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    move-result v3

    invoke-virtual {v1, v12, v3, v13}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_5

    :cond_8
    move-object/from16 v2, v17

    :goto_5
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    if-eqz v0, :cond_9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v12, v13, v2, v9}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;->handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z

    move-result v15

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_a
    return-void

    :cond_b
    move v9, v11

    sub-float v11, v9, v1

    iget v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$startingAngle:F

    mul-float v6, v11, v2

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    iget v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v2}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    :goto_7
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$adjustedSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_8
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v1, v3, v13, v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v1, v13, v12, v3, v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_9
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_e
    iget-object v10, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v10, v7, v13, v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v1, v10, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v5, v10, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    move-object v1, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/RectF;F)V

    invoke-virtual {v10, v13, v12, v7, v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    move-result v1

    invoke-virtual {v10, v12, v1, v13}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_9

    :cond_f
    iget-boolean v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    if-eqz v2, :cond_10

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    goto :goto_a

    :cond_10
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    :goto_a
    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    goto :goto_b

    :cond_11
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    :goto_b
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    invoke-virtual {v4, v1, v3, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$adjustedSourceRectHint:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    iget-boolean v6, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isInPipDirection:Z

    iget-object v7, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v7, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    if-eqz v6, :cond_14

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v6, v7, :cond_14

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v6, v7, :cond_12

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    :goto_c
    int-to-float v4, v4

    div-float/2addr v6, v4

    goto :goto_d

    :cond_12
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_c

    :goto_d
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v4, v7, :cond_13

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    :goto_e
    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_f

    :cond_13
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_e

    :goto_f
    mul-float/2addr v11, v4

    mul-float/2addr v1, v6

    add-float/2addr v1, v11

    goto :goto_10

    :cond_14
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_10
    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v4, v6

    iget v6, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    cmpl-float v7, v1, v9

    if-nez v7, :cond_15

    iget v4, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    :cond_15
    iget-object v5, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v5, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    invoke-virtual {v13, v12, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v12, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v12, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v1

    xor-int/2addr v1, v14

    if-eqz v1, :cond_16

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, v13, v12, v1, v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    move-result v1

    invoke-virtual {v2, v12, v1, v13}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_16
    :goto_11
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v12, v13, v8, v9}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;->handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z

    move-result v15

    goto :goto_12

    :cond_17
    move v15, v10

    :goto_12
    if-nez v15, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_18
    return-void
.end method

.method public final onEndTransaction(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBackgroundColorApplied:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBackgroundColorApplied:Z

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v0, "PipTransitionAnimator_onEndTransaction: unsetColor, dir="

    const-string v2, "PipTaskOrganizer"

    invoke-static {p1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    invoke-virtual {p2, p3, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    :cond_3
    return-void
.end method

.method public final onStartTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    move-result v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBackgroundColorApplied:Z

    sget-object v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->PIP_BACKGROUND_COLOR:[F

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PipTransitionAnimator_onStartTransaction: setColor, dir="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    const-string v1, "PipTaskOrganizer"

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final updateEndValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/Rect;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
