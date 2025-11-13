.class public final Lcom/android/wm/shell/freeform/FreeformAdjustImeController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAdjustingBounds:Landroid/graphics/Rect;

.field public mAnimating:Z

.field public final mContext:Landroid/content/Context;

.field public final mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayFrame:Landroid/graphics/Rect;

.field public mIsAdjusted:Z

.field public mLastDisplayRotation:I

.field public mLastOrientation:I

.field public mLastYOffset:I

.field public final mOriginBounds:Landroid/graphics/Rect;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public mTargetYOffset:I

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTaskSurface:Landroid/view/SurfaceControl;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mYOffsetForIme:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/view/SurfaceControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mStartBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayFrame:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastDisplayRotation:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskSurface:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final adjustConfig(Landroid/window/WindowContainerToken;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "adjustConfig: failed, empty bounds, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformAdjustImeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final imePositionChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->setAdjusted(Z)V

    :cond_1
    return-void
.end method

.method public final onImeStartPositioning(ZLandroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    if-nez p3, :cond_0

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    iget-object v3, p3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isMotionAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTaskMotionInfo:Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->clearAnimator(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v4

    goto :goto_2

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isBoundsAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ime"

    invoke-virtual {v4, v0, v5}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iput-boolean v2, v4, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFlingCanceled:Z

    goto :goto_3

    :cond_4
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionStartPoint:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_6

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_6

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    iget-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    if-nez v3, :cond_6

    return-void

    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastOrientation:I

    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_7

    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastDisplayRotation:I

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v4

    if-eq v3, v4, :cond_9

    :cond_7
    iget-object v3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastOrientation:I

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastDisplayRotation:I

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_4
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    iput v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    if-eqz p1, :cond_b

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v4

    invoke-virtual {v3, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p1

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    or-int/2addr v3, v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4, p1, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mStartBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    invoke-virtual {p3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v3

    add-int/2addr v3, p1

    sget p1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v4, p1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-nez p1, :cond_a

    move p1, v2

    goto :goto_5

    :cond_a
    move p1, v1

    :goto_5
    if-lez v3, :cond_b

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mStartBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050425

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getCaptionVisibleHeight$1()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int v1, p1

    :cond_b
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    iput-boolean v2, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAnimating:Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iput-boolean v2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeAnimating:Z

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    if-ne p1, v1, :cond_c

    return-void

    :cond_c
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    if-gez p1, :cond_f

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mStartBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    if-eq p1, p3, :cond_f

    :cond_e
    :goto_6
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_f
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->adjustConfig(Landroid/window/WindowContainerToken;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public final onLayoutPositionEnd(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleCancel: reset state, "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeformAdjustImeController"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->imePositionChanged(I)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->adjustConfig(Landroid/window/WindowContainerToken;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->setAdjusted(Z)V

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAdjustingBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAnimating:Z

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeAnimating:Z

    return-void

    :cond_1
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mLastYOffset:I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mTargetYOffset:I

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mYOffsetForIme:I

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAnimating:Z

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iput-boolean v0, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mImeAnimating:Z

    if-ne p1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->imePositionChanged(I)V

    return-void
.end method

.method public final setAdjusted(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mIsAdjusted:Z

    const-string/jumbo v0, "setAdjusted: "

    const-string v1, ", "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformAdjustImeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
