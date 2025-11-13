.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;


# instance fields
.field public final mAnimatedBounds:Landroid/graphics/RectF;

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mScale:F

.field public mSpringTranslateX:Lcom/facebook/rebound/Spring;

.field public mSpringTranslateY:Lcom/facebook/rebound/Spring;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;)V
    .locals 12

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mScale:F

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v4, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v3, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    invoke-static {v4, v5}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-static {v8, v9}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v10

    invoke-direct {v3, v6, v7, v10, v11}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v3, v2, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    new-instance v2, Lcom/facebook/rebound/SpringConfig;

    invoke-static {v4, v5}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v3

    invoke-static {v8, v9}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v2, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setVelocity(D)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget p2, p2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mTargetScale:F

    iput p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mScale:F

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->setAtRest()V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->setAtRest()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    invoke-interface {v2, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isAnimating()Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 9

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput v2, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimationFinishedCallback:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object v4, v3, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v3, v0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object v4, v3, Lcom/facebook/rebound/BaseSpringSystem;->mActiveSprings:Ljava/util/Set;

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v3, Lcom/facebook/rebound/BaseSpringSystem;->mSpringRegistry:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    invoke-interface {v1, p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Landroid/graphics/Rect;)V

    :cond_4
    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-boolean v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mCanceled:Z

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v3, v3, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    double-to-int v3, v3

    int-to-float v3, v3

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    :goto_0
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v4, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    double-to-int v4, v4

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    :goto_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mAnimatedBounds:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_3

    iget v7, v11, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v10, v7

    if-nez v7, :cond_3

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v11, v3, v4}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mStartBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    float-to-int v3, v3

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v7, :cond_4

    move v7, v10

    goto :goto_2

    :cond_4
    iget v7, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mScale:F

    div-float v11, v3, v4

    sub-float v12, v10, v7

    mul-float/2addr v12, v11

    add-float/2addr v12, v7

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_2
    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v12, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v13, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v12

    move-object v12, v13

    move v13, v7

    move/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v12, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v11, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v6, v8

    invoke-virtual {v12, v11, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput v7, v5, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x3ecccccd    # 0.4f

    goto :goto_3

    :cond_5
    const v5, 0x3e4ccccd    # 0.2f

    :goto_3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    div-float/2addr v3, v4

    sub-float/2addr v10, v3

    mul-float/2addr v10, v5

    invoke-virtual {v0, v10}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    iget-object v0, v1, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v3, v1, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-wide v5, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/rebound/Spring;->setAtRest()V

    :cond_6
    monitor-exit v2

    return-void

    :cond_7
    :goto_4
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->this$0:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateX:Lcom/facebook/rebound/Spring;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mSpringTranslateY:Lcom/facebook/rebound/Spring;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$StashRestoreAnimation;->mEndBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-double v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
