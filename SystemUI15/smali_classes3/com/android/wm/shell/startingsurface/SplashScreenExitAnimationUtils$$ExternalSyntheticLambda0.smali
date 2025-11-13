.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/ViewGroup;

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

.field public final synthetic f$8:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;


# direct methods
.method public synthetic constructor <init>(IILandroid/view/ViewGroup;FFILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$4:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$5:I

    iput p6, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$6:I

    iput-object p7, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    iput-object p8, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$8:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$0:I

    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$1:I

    iget-object v9, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$2:Landroid/view/ViewGroup;

    iget v10, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$3:F

    iget v11, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$4:F

    iget v12, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$5:I

    iget v13, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$6:I

    iget-object v14, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$7:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;->f$8:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    sget-object v16, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0x0

    int-to-long v6, v1

    move v2, v15

    move v3, v8

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->getProgress(FIJJ)F

    move-result v1

    move-object/from16 v2, v16

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    instance-of v2, v9, Landroid/window/SplashScreenView;

    if-eqz v2, :cond_0

    check-cast v9, Landroid/window/SplashScreenView;

    invoke-virtual {v9}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v9}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    sub-float v5, v4, v1

    mul-float/2addr v5, v10

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz v3, :cond_2

    sub-float/2addr v4, v1

    mul-float/2addr v4, v11

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    int-to-long v4, v12

    int-to-long v6, v13

    move v2, v15

    move v3, v8

    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->getProgress(FIJJ)F

    move-result v1

    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->MASK_RADIUS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v2

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    iget v4, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mInitRadius:I

    int-to-float v5, v4

    iget v6, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mFinishRadius:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    iget-object v4, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mCircleCenter:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    iget-object v4, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v14, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v14}, Landroid/view/View;->postInvalidate()V

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mSplashScreenView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->SHIFT_UP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mToYDelta:F

    iget v3, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFromYDelta:F

    invoke-static {v2, v3, v1, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mMainWindowShiftLength:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v3, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v3

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_5
    :goto_2
    return-void
.end method
