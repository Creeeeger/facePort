.class public final Lcom/android/wm/shell/pip2/phone/PipTouchState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DOUBLE_TAP_TIMEOUT:J


# instance fields
.field public mActivePointerId:I

.field public mAllowDraggingOffscreen:Z

.field public mAllowInputEvents:Z

.field public mAllowTouches:Z

.field public final mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

.field public final mDownDelta:Landroid/graphics/PointF;

.field public final mDownTouch:Landroid/graphics/PointF;

.field public mDownTouchTime:J

.field public final mHoverExitTimeoutCallback:Ljava/lang/Runnable;

.field public mIsDoubleTap:Z

.field public mIsDragging:Z

.field public mIsUserInteracting:Z

.field public mIsWaitingForDoubleTap:Z

.field public final mLastDelta:Landroid/graphics/PointF;

.field public mLastDownTouchTime:J

.field public final mLastTouch:Landroid/graphics/PointF;

.field public mLastTouchDisplayId:I

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mPreviouslyDragging:Z

.field public mStartedDragging:Z

.field public mUpTouchTime:J

.field public final mVelocity:Landroid/graphics/PointF;

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->DOUBLE_TAP_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouchTime:J

    iput-wide v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastDownTouchTime:J

    iput-wide v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mUpTouchTime:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowTouches:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDoubleTap:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mPreviouslyDragging:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouchDisplayId:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public final addMovementToVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float p0, v0

    neg-float v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouchDisplayId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    const-string v4, "PipTouchState"

    const/4 v5, 0x4

    const/4 v6, -0x1

    if-eq v0, v3, :cond_a

    const/4 v7, 0x2

    if-eq v0, v7, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_e

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    const/16 p1, 0xb

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mHoverExitTimeoutCallback:Ljava/lang/Runnable;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    if-ne v1, v4, :cond_13

    if-nez v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_4

    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p1, p1, v5

    if-eqz p1, :cond_13

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    int-to-long p0, p0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x4

    const-string v9, "%s: Invalid active pointer id on MOVE: %d"

    const-wide v6, -0x46182fc76ef5c82cL    # -9.392715600399939E-30

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p1, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v1, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, p1, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    if-nez v4, :cond_8

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    goto :goto_1

    :cond_8
    iput-boolean v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_4

    :cond_a
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    if-nez v0, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    const/16 v7, 0x3e8

    invoke-virtual {v0, v7, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-virtual {v0, v1, v7}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v6, :cond_c

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p1, p1, v5

    if-eqz p1, :cond_13

    iget p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    int-to-long p0, p0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x4

    const-string v9, "%s: Invalid active pointer id on UP: %d"

    const-wide v6, 0x3469b696037232dcL    # 3.2770826547297664E-56

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mUpTouchTime:J

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mPreviouslyDragging:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDoubleTap:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    iget-wide v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mUpTouchTime:J

    iget-wide v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouchTime:J

    sub-long/2addr v0, v4

    sget-wide v4, Lcom/android/wm/shell/pip2/phone/PipTouchState;->DOUBLE_TAP_TIMEOUT:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_d

    move v2, v3

    :cond_d
    iput-boolean v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    :cond_e
    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    :cond_f
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowTouches:Z

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_11

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    :cond_11
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipTouchState;->addMovementToVelocityTracker(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    invoke-virtual {v0, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDownTouchTime:J

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mPreviouslyDragging:Z

    if-nez p1, :cond_12

    iget-wide v6, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastDownTouchTime:J

    sub-long v6, v4, v6

    sget-wide v8, Lcom/android/wm/shell/pip2/phone/PipTouchState;->DOUBLE_TAP_TIMEOUT:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_12

    goto :goto_3

    :cond_12
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDoubleTap:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsWaitingForDoubleTap:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    iput-wide v4, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastDownTouchTime:J

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mDoubleTapTimeoutCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_13

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    :goto_4
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mStartedDragging:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mIsUserInteracting:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mLastTouchDisplayId:I

    return-void
.end method
