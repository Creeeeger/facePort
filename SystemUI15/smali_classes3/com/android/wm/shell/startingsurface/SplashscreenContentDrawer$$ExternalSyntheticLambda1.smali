.class public final synthetic Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field public final synthetic f$1:Landroid/window/SplashScreenView;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Ljava/lang/Runnable;

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$1:Landroid/window/SplashScreenView;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Runnable;

    iput p6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$5:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x2

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$1:Landroid/window/SplashScreenView;

    iget-object v6, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl;

    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Runnable;

    iget v11, v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda1;->f$5:F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v4, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    iget v8, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    iget-object v9, v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;-><init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;F)V

    iget v2, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationType:I

    iget-object v13, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mSplashScreenView:Landroid/window/SplashScreenView;

    iget-object v7, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowSurface:Landroid/view/SurfaceControl;

    iget v11, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mMainWindowShiftLength:I

    iget-object v9, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v10, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mFirstWindowFrame:Landroid/graphics/Rect;

    iget v14, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAnimationDuration:I

    iget v15, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconFadeOutDuration:I

    iget v12, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mIconStartAlpha:F

    iget v8, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mBrandingStartAlpha:F

    iget v6, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mAppRevealDuration:I

    iget v5, v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->mRoundedCornerRadius:F

    sget-object v3, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils;->ICON_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, v14

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;

    move-object v3, v2

    move v4, v15

    move v5, v14

    move/from16 v16, v6

    move-object v6, v13

    move v7, v12

    move/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda1;-><init>(IILandroid/view/ViewGroup;FFI)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    :cond_0
    move/from16 v16, v6

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    mul-int/2addr v2, v2

    mul-int v4, v3, v3

    add-int/2addr v4, v2

    int-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v1, v1, v17

    double-to-int v1, v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    filled-new-array {v2, v2, v4}, [I

    move-result-object v21

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    new-instance v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;

    invoke-direct {v2, v13}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;-><init>(Landroid/view/ViewGroup;)V

    move/from16 v24, v5

    iget-object v5, v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mCircleCenter:Landroid/graphics/Point;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    iput v4, v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mInitRadius:I

    iput v1, v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mFinishRadius:I

    new-instance v1, Landroid/graphics/RadialGradient;

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v17, v1

    move-object/from16 v22, v6

    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v2, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;->mVanishPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v17, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;

    neg-int v3, v11

    int-to-float v5, v3

    const/4 v4, 0x0

    move-object/from16 v3, v17

    move/from16 v18, v24

    move-object v6, v1

    move/from16 v19, v8

    move-object v8, v13

    move/from16 v20, v12

    move/from16 v12, v18

    invoke-direct/range {v3 .. v12}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;-><init>(FFLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Lcom/android/wm/shell/common/TransactionPool;Landroid/graphics/Rect;IF)V

    move-object/from16 v11, v17

    :goto_0
    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    move/from16 v19, v8

    move/from16 v20, v12

    const/4 v1, 0x0

    move-object v11, v1

    goto :goto_0

    :goto_1
    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    int-to-long v3, v14

    invoke-virtual {v12, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$1;

    invoke-direct {v0, v11, v13, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;Landroid/view/ViewGroup;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;

    move-object v3, v0

    move v4, v15

    move v5, v14

    move-object v6, v13

    move/from16 v7, v20

    move/from16 v8, v19

    move/from16 v9, v16

    move-object v10, v2

    invoke-direct/range {v3 .. v11}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0;-><init>(IILandroid/view/ViewGroup;FFILcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$RadialVanishAnimation;Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimationUtils$ShiftUpAnimation;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v12

    :goto_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
