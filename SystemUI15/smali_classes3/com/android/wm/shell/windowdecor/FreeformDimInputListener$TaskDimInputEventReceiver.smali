.class public final Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

.field public mConsumeBatchEventScheduled:Z

.field public mMoved:Z

.field public mTouchBlocked:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public final handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mAllowTouches:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "FreeformDimInputListener"

    const/4 v4, 0x1

    if-eqz v1, :cond_16

    const-string v5, " in handleMotionEvent"

    const-string v6, "Invalid pointerId="

    const/4 v7, -0x1

    if-eq v1, v4, :cond_e

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    goto/16 :goto_9

    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mTouchBlocked:Z

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v7, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move v3, v7

    goto :goto_2

    :cond_6
    iget v8, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    iget v9, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    add-int/2addr v8, v9

    iget v9, v6, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v3, v8, :cond_7

    if-eq v9, v4, :cond_5

    :goto_0
    move v3, v4

    goto :goto_2

    :cond_7
    invoke-static {v9}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_8
    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v10, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v10, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v6

    iget-object v10, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v10, v0}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    if-ge v3, v6, :cond_9

    if-eq v9, v4, :cond_5

    goto :goto_0

    :cond_9
    invoke-static {v9}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :goto_2
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v2}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->scheduleAnimateScale(ILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v7, v3

    :cond_a
    :goto_3
    invoke-static {v7}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isScaleUpAnimType(I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    goto :goto_4

    :cond_b
    if-nez v7, :cond_c

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    :cond_c
    :goto_4
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    :cond_d
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result p1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->onDragPositioningMove(FF)Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mMoved:Z

    :goto_5
    move v0, v4

    goto/16 :goto_9

    :cond_e
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mTouchBlocked:Z

    if-eqz v1, :cond_f

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mTouchBlocked:Z

    return v0

    :cond_f
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mMoved:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget v8, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    if-eq v8, v7, :cond_10

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->resetStashedFreeform(Z)V

    :cond_10
    if-ne v1, v7, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    goto :goto_6

    :cond_11
    if-eqz p1, :cond_13

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_12

    iget v4, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_12
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v3, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object v2, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    :cond_13
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {v1, v2, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_14
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    :cond_15
    :goto_6
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iput v7, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    goto/16 :goto_9

    :cond_16
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mTouchBlocked:Z

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v5, :cond_1b

    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_1b

    iget-object v7, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    if-nez v7, :cond_17

    goto :goto_7

    :cond_17
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v8, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v6, v7, v8, v1}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result v1

    iget-object v6, v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    move-result v6

    if-eqz v6, :cond_19

    if-eq v1, v4, :cond_1a

    :cond_19
    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v5, v5, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    if-ne v5, v2, :cond_1b

    if-ne v1, v2, :cond_1b

    :cond_1a
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCornerGestureRunning()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string p1, "handleMotionEvent: skip, reason=corner_gesture_running"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mTouchBlocked:Z

    return v0

    :cond_1b
    :goto_7
    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p1, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_8

    :cond_1c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_8
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    :cond_1d
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result p1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mMoved:Z

    goto/16 :goto_5

    :goto_9
    return v0
.end method

.method public final onBatchedInputEventPending(I)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->mConsumeBatchEventScheduled:Z

    :goto_0
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
