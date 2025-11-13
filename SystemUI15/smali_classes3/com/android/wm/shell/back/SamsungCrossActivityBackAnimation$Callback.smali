.class public final Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;
.super Landroid/window/IOnBackInvokedCallback$Default;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    invoke-direct {p0}, Landroid/window/IOnBackInvokedCallback$Default;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/window/BackProgressAnimator;->onBackCancelled(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBackInvoked()V
    .locals 4

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object v1, v1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1}, Landroid/window/BackProgressAnimator;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mEnteringStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mClosingStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->POST_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$1;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mPostScrimDimAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mPostScrimDimAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$2;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->finishAnimation$2()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onBackProgressed(Landroid/window/BackMotionEvent;)V
    .locals 2

    sget-boolean v0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->DEBUG_PROGRESS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBackProgressed, backEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungCrossActivityBack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {p0, p1}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackMotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object v0, v0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->removeOnBackCancelledFinishCallback()V

    iget-object p0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback;->this$0:Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;

    iget-object v0, p0, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v1, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation$Callback$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/back/SamsungCrossActivityBackAnimation;)V

    invoke-virtual {v0, p1, v1}, Landroid/window/BackProgressAnimator;->onBackStarted(Landroid/window/BackMotionEvent;Landroid/window/BackProgressAnimator$ProgressCallback;)V

    return-void
.end method
