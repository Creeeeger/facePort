.class public final Lcom/android/wm/shell/windowdecor/TaskMotionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowTouches:Z

.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mCanceled:Z

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mFlingCanceled:Z

.field public mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastReportedTaskBounds:Landroid/graphics/Rect;

.field public mLastTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mMinVisibleWidth:I

.field public mResizeFreeformUpdateListener:Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;

.field public mScaledFreeformHeight:I

.field public mScreenEdgeInset:I

.field public final mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public mStashMoveThreshold:I

.field public final mTargetBounds:Landroid/graphics/Rect;

.field public mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRect2:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingCanceled:Z

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p1, p5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p1, p5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isScaleUpAnimType(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final addTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Bounds Animator canceled by "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isBoundsAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TaskMotionController"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {p2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final computeStashState(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-gt v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_f

    move v1, v4

    :goto_0
    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v2, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v5, :cond_2

    iget-boolean v2, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    if-eqz v2, :cond_3

    iget v2, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget p3, p3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    if-ne v1, p3, :cond_8

    const/4 v2, 0x2

    if-ne p3, v7, :cond_5

    goto :goto_2

    :cond_5
    if-ne p3, v2, :cond_8

    :goto_2
    iget v5, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    iget v8, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    add-int/2addr v5, v8

    if-ne p3, v7, :cond_6

    iget v8, p2, Landroid/graphics/Rect;->right:I

    if-gt v8, v5, :cond_7

    :cond_6
    if-ne p3, v2, :cond_8

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    if-ge p3, v2, :cond_8

    :cond_7
    move v6, v7

    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_9
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v4

    if-gt p3, v2, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v2

    if-nez v2, :cond_b

    iget v2, p3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p3, :cond_b

    monitor-exit p0

    return v0

    :cond_b
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleViewWidth()I

    move-result p3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, p3

    div-int/2addr v5, v4

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p2

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, v2

    iput p3, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_c

    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-ge v2, p2, :cond_d

    :cond_c
    if-ne v1, v4, :cond_e

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p3, p1, :cond_e

    :cond_d
    monitor-exit p0

    return v0

    :cond_e
    monitor-exit p0

    return v1

    :cond_f
    monitor-exit p0

    return v0

    :cond_10
    :goto_4
    monitor-exit p0

    return v0

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isBoundsAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMotionAnimating()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {v4}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final moveToTarget(Landroid/graphics/Rect;Ljava/lang/Runnable;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    const-string v9, "moveToTarget: stashState=0, velocity.x= "

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mCanceled:Z

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->rebuildFlingConfigs(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v11, v4, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    invoke-static {v5, v4, v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;)F

    move-result v12

    if-eqz v8, :cond_1

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpg-float v6, v12, v6

    if-gez v6, :cond_1

    int-to-float v6, v2

    add-float/2addr v6, v12

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    move v14, v10

    :goto_0
    if-eqz v8, :cond_2

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v6, v12, v6

    if-lez v6, :cond_2

    int-to-float v6, v2

    add-float/2addr v6, v12

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    move v15, v10

    :goto_1
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    if-eqz v14, :cond_3

    cmpl-float v7, v4, v6

    if-nez v7, :cond_3

    const-string v4, "TaskMotionController"

    const-string v7, "moveToTarget: make velocity as negative"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    :cond_3
    const/high16 v7, 0x457a0000    # 4000.0f

    if-eqz v14, :cond_5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    const/high16 v5, -0x3a860000    # -4000.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    sub-float/2addr v4, v7

    goto :goto_3

    :cond_4
    const v5, -0x3a254000    # -7000.0f

    cmpg-float v7, v4, v5

    if-gez v7, :cond_7

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_5
    if-eqz v15, :cond_7

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_6

    cmpg-float v5, v4, v7

    if-gez v5, :cond_6

    add-float/2addr v4, v7

    goto :goto_3

    :cond_6
    const v5, 0x45dac000    # 7000.0f

    cmpl-float v7, v4, v5

    if-lez v7, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    iget v7, v11, Landroid/graphics/PointF;->y:F

    sget-object v5, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v5

    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v13, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    int-to-float v2, v2

    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v5, v13, v2, v6, v10}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    int-to-float v3, v3

    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v5, v2, v3, v6, v10}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v3, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    if-eqz v8, :cond_8

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    :goto_4
    move-object v6, v2

    goto :goto_5

    :cond_8
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    goto :goto_4

    :goto_5
    iget-object v10, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    move-object v2, v5

    move-object v13, v5

    move-object v5, v6

    move-object v6, v10

    move v10, v7

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V

    sget-object v17, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move/from16 v18, v10

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v2

    if-eq v2, v8, :cond_c

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScale(ILandroid/graphics/Rect;)Z

    goto :goto_7

    :cond_9
    const/4 v2, 0x1

    if-eqz v14, :cond_a

    move v13, v2

    goto :goto_6

    :cond_a
    if-eqz v15, :cond_b

    const/4 v13, 0x2

    goto :goto_6

    :cond_b
    const-string v2, "TaskMotionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", estimatedStashXEndValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_6
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v2, v13}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScale(ILandroid/graphics/Rect;)Z

    :cond_c
    :goto_7
    new-instance v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mResizeFreeformUpdateListener:Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mResizeFreeformUpdateListener:Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda6;

    iget-object v3, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    :cond_d
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    monitor-exit p0

    return-void

    :goto_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;F)V
    .locals 6

    new-instance v5, Landroid/window/WindowContainerTransaction;

    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;FLandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final postAnimationFinished(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;FLandroid/window/WindowContainerTransaction;)V
    .locals 2

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p5, v0, p3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p5, v0, p4}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p5, p4}, Landroid/window/WindowContainerTransaction;->requestForceTaskInfoChange(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_1
    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p4, p5}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->removeMotionAnimator(I)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastReportedTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mLastTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public final rebuildFlingConfigs(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    new-instance v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const v4, 0x3ff33333    # 1.9f

    invoke-direct {v1, v4, v3, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    new-instance v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getCaptionVisibleHeight$1()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    invoke-direct {v1, v4, v2, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-direct {p1, v4, v2, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    return-void
.end method

.method public final removeMotionAnimator(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final scheduleAnimateRestore(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v1

    const-string v2, " endBounds="

    const-string v4, " startBounds="

    const-string v5, "TaskMotionController"

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "scheduleAnimateRestore fail: taskInfo="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->addTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    goto :goto_1

    :cond_3
    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_5

    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v7, v7

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/view/SemWindowManager;->getInitialDensity()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_4

    iget-object v6, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_4
    invoke-static {v7, v8, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->recalculateWindowLayout(FFLandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    :cond_5
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v7, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    invoke-static {v7, v6, v1, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v1, v6, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    :cond_6
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v1, v6, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->computeStashState(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)I

    move-result p3

    const/4 v1, 0x2

    if-eqz p3, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "scheduleAnimateRestore adjust restore bounds: taskInfo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v1

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v1

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_8
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_a

    :cond_9
    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v4

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    :cond_a
    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object p3, p3, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-le p3, v2, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    :cond_b
    iput v1, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    const/4 p3, 0x1

    iput-boolean p3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    new-instance p3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    move-object v1, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;-><init>(ILcom/android/wm/shell/windowdecor/FreeformStashState;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    new-instance p2, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    invoke-direct {v0, p3, p2}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    iget p2, p3, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mAnimType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;

    const/4 p2, 0x2

    invoke-direct {p1, v0, p2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final scheduleAnimateScale(ILandroid/graphics/Rect;)Z
    .locals 11

    const-string/jumbo v0, "scheduleAnimateScale: animType="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_8

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "TaskMotionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed, already animating, t #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-nez p1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput p1, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    move v10, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    move-object v4, v0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;-><init>(ILcom/android/wm/shell/windowdecor/FreeformStashState;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    new-instance v1, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;-><init>(Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$OnAnimationFinishedCallback;)V

    iget-object p2, p2, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mAnimType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v3

    :cond_8
    monitor-exit p0

    return v2

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setStashDim(Landroid/window/WindowContainerTransaction;Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v5, v3, v4, v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->createStashDimOverlay(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v5, :cond_a

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_0
    new-instance v3, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v13, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v14, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;ILandroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    goto/16 :goto_4

    :cond_4
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v5, :cond_6

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    :goto_1
    new-instance v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    iget-object v11, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iget-object v13, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iget-object v14, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iget-object v15, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v6, v3

    move-object/from16 v16, v5

    invoke-direct/range {v6 .. v16}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :cond_6
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v6, 0xa

    invoke-static {v6, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iget-boolean v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v7, :cond_7

    const/4 v7, 0x4

    invoke-static {v7, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    move v14, v3

    :goto_2
    move v15, v6

    goto :goto_3

    :cond_7
    move v14, v5

    goto :goto_2

    :cond_8
    move v14, v5

    move v15, v14

    :goto_3
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iget v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :cond_9
    move v13, v5

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    new-instance v6, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v8, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    new-instance v9, Landroid/util/Size;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v10, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-direct {v9, v10, v7}, Landroid/util/Size;-><init>(II)V

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v7, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getResizeEdgeHandleSize(Landroid/content/res/Resources;)I

    move-result v10

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v7, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f070419

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v7, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f0702f9

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;-><init>(ILandroid/util/Size;IIIIII)V

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    xor-int/2addr v7, v4

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;IZ)Z

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iput-boolean v1, v3, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsDexEnabled:Z

    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    move-object/from16 v1, p1

    goto :goto_5

    :cond_b
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    :goto_5
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz p2, :cond_c

    const/4 v4, 0x2

    :cond_c
    invoke-virtual {v1, v2, v4}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-eqz p1, :cond_d

    return-void

    :cond_d
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
