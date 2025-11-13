.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;


# instance fields
.field public final mAnimType:I

.field public final mStartFromLeftStash:Z

.field public final mTaskSurfaceBounds:Landroid/graphics/Rect;

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;)V
    .locals 6

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mStartFromLeftStash:Z

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    iget v4, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mTargetScale:F

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v3, v5, v0

    aput v4, v5, v1

    const-string/jumbo v1, "scale"

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mStartBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    iget p2, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mAnimType:I

    iput p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mAnimType:I

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mStartFromLeftStash:Z

    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    invoke-interface {v2, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput v1, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    :goto_0
    iget v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mAnimType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    :goto_1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mStartFromLeftStash:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v2, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mTaskSurfaceBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget p1, v3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v2, v1, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit v0

    return-void

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$ScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
