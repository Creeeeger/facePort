.class public final Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final mAnimatedRect:Landroid/graphics/Rect;

.field public mAnimationEndCallback:Ljava/lang/Runnable;

.field public final mBaseBounds:Landroid/graphics/Rect;

.field public final mDelta:F

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mFinishTx:Landroid/view/SurfaceControl$Transaction;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mStartTx:Landroid/view/SurfaceControl$Transaction;

.field public final mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IF)V
    .locals 3

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mBaseBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mAnimatedRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mStartTx:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mFinishTx:Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-direct {p2}, Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p9, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mDelta:F

    new-instance p1, Landroid/animation/RectEvaluator;

    invoke-direct {p1, v2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {p6, p7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    int-to-long p1, p8

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static setBoundsAndRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p4, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mFinishTx:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mBaseBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mEndBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->setBoundsAndRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mAnimationEndCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mStartTx:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mBaseBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mStartBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mDelta:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->setBoundsAndRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mStartTx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mDelta:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mBaseBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mAnimatedRect:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2, p0, v1}, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->setBoundsAndRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
