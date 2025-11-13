.class public final Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mAnimationEndCallback:Ljava/lang/Runnable;

.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mLeash:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez p4, :cond_0

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    :cond_0
    new-array p2, v0, [F

    fill-array-data p2, :array_1

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    new-instance p2, Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-direct {p2}, Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b002f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mAnimationEndCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip2/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
