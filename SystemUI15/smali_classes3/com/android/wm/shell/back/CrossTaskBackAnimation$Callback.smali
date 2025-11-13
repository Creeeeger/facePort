.class public final Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;
.super Landroid/window/IOnBackInvokedCallback$Default;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBackInvoked()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mPostAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$1;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->finishAnimation$1()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->removeOnBackCancelledFinishCallback()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getSwipeEdge()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mIsRightEdge:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackMotionEvent;->getTouchY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V

    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method
