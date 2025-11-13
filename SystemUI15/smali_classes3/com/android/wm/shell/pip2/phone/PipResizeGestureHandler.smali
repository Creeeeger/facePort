.class public final Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;


# instance fields
.field public mAllowGesture:Z

.field public mAngle:F

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mDownBounds:Landroid/graphics/Rect;

.field public final mDownPoint:Landroid/graphics/PointF;

.field public final mDownSecondPoint:Landroid/graphics/PointF;

.field public mEnablePinchResize:Z

.field public mFirstIndex:I

.field public mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsAttached:Z

.field public mIsEnabled:Z

.field public final mLastPoint:Landroid/graphics/PointF;

.field public final mLastResizeBounds:Landroid/graphics/Rect;

.field public final mLastSecondPoint:Landroid/graphics/PointF;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMaxSize:Landroid/graphics/Point;

.field public final mMinSize:Landroid/graphics/Point;

.field public mOngoingPinchToResize:Z

.field public final mPhonePipMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

.field public final mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public final mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

.field public final mPipTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public mSecondIndex:I

.field public final mStartBoundsAfterRelease:Landroid/graphics/Rect;

.field public mThresholdCrossed:Z

.field public mTouchSlop:F

.field public final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field public final mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

.field public final mUserResizeBounds:Landroid/graphics/Rect;

.field public mWaitingForBoundsChangeTransition:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip2/phone/PipTouchState;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/pip2/phone/PipTransitionState;Ljava/lang/Runnable;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/pip/PipPerfHintController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mStartBoundsAfterRelease:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mWaitingForBoundsChangeTransition:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    iput v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDisplayId:I

    iput-object p10, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p11, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iput-object p6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    invoke-virtual {p6, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->addPipTransitionStateChangedListener(Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;)V

    iput-object p7, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    iput-object p9, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    iput-object p8, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    new-instance p1, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    invoke-direct {p1}, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    new-instance p1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;I)V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public getLastResizeBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip2/phone/PipTouchState;

    iget-boolean v0, v0, Lcom/android/wm/shell/pip2/phone/PipTouchState;->mAllowInputEvents:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_5

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->hideMenu()V

    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method

.method public onPinchResize(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    :cond_0
    iput v2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    iput v2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    iput-boolean v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAngle:F

    iput-boolean v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mStartBoundsAfterRelease:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v7, v9

    add-int/2addr v6, v7

    div-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    add-int/2addr v5, v8

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-lt v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v7, v9

    add-int/2addr v6, v7

    div-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    add-int/2addr v5, v8

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v5, v4, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v8, v7, :cond_7

    iget v7, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_7
    iget v7, v4, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v8, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v7, v5, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v7, v1, v6, v4}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v4

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5, v4}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "resize_bounds_change"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v4}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object v5, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x5

    if-ne v0, v7, :cond_a

    iget v7, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-ne v7, v2, :cond_a

    iget v7, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v7, v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_a

    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    iput v3, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    iget v8, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    invoke-virtual {v7, v1, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget v7, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v7

    iget v8, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz v1, :cond_a

    new-instance v6, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;I)V

    const-string v7, "onPinchResize"

    invoke-virtual {v1, v6, v7}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_a
    if-ne v0, v5, :cond_e

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-eq v0, v2, :cond_e

    iget v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v1, v2, :cond_b

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    iget v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    float-to-double v5, v0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    float-to-double v5, v0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mTouchSlop:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->pilferPointers()V

    iput-boolean v3, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/wm/shell/pip2/phone/PhonePipMenuController;->hideMenu()V

    :cond_d
    iget-boolean p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz p1, :cond_e

    iget-object v6, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    invoke-virtual/range {v5 .. v13}, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAngle:F

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleUserResizePip(Landroid/graphics/Rect;F)V

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setHasUserResizedPip()V

    nop

    :cond_e
    :goto_2
    return-void
.end method

.method public final onPipTransitionStateChanged(IILandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    iget-object v6, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eq v1, v5, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mWaitingForBoundsChangeTransition:Z

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-boolean v4, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mWaitingForBoundsChangeTransition:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v9, v1, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No leash cached by mPipTransitionState="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v1, "pip_start_tx"

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/SurfaceControl$Transaction;

    const-string v1, "pip_finish_tx"

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v10, v9, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;

    iget-object v8, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget-object v13, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mStartBoundsAfterRelease:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/16 v15, 0xfa

    iget v2, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mAngle:F

    move-object v7, v1

    move/from16 v16, v2

    invoke-direct/range {v7 .. v16}, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;-><init>(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IF)V

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;I)V

    iput-object v2, v1, Lcom/android/wm/shell/pip2/animation/PipResizeAnimator;->mAnimationEndCallback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "resize_bounds_change"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v2, v1, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v2, v2, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v2, v4, v1, v5}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpg-double v5, v1, v5

    if-ltz v5, :cond_6

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    cmpl-double v1, v1, v5

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v3

    :goto_2
    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_7
    iput-boolean v3, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mWaitingForBoundsChangeTransition:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v3}, Lcom/android/wm/shell/pip2/phone/PipScheduler;->scheduleAnimateResizePip(Landroid/graphics/Rect;Z)V

    :goto_3
    return-void
.end method

.method public pilferPointers()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    return-void
.end method

.method public final updateIsEnabled()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mIsAttached:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const-string v1, "pip-resize"

    iget v2, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip2/phone/PipResizeGestureHandler;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create input event receiver"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method
