.class public final Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowGesture:Z

.field public mAngle:F

.field public final mContext:Landroid/content/Context;

.field public mCtrlType:I

.field public mDelta:I

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mDisplayId:I

.field public final mDownBounds:Landroid/graphics/Rect;

.field public final mDownPoint:Landroid/graphics/PointF;

.field public final mDownSecondPoint:Landroid/graphics/PointF;

.field public final mDragCornerSize:Landroid/graphics/Rect;

.field public mEnableDragCornerResize:Z

.field public mEnablePinchResize:Z

.field public mFirstIndex:I

.field public mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsAttached:Z

.field public mIsEnabled:Z

.field public mIsSysUiStateValid:Z

.field public final mLastPoint:Landroid/graphics/PointF;

.field public final mLastResizeBounds:Landroid/graphics/Rect;

.field public final mLastSecondPoint:Landroid/graphics/PointF;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMaxSize:Landroid/graphics/Point;

.field public final mMinSize:Landroid/graphics/Point;

.field public final mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

.field public mOhmOffset:I

.field public mOngoingPinchToResize:Z

.field public final mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

.field public mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

.field public mPointerIconType:I

.field public final mResetTouchStateRunnable:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

.field public mSecondIndex:I

.field public mThresholdCrossed:Z

.field public final mTmpBottomLeftCorner:Landroid/graphics/Rect;

.field public final mTmpBottomRightCorner:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTopLeftCorner:Landroid/graphics/Rect;

.field public final mTmpTopRightCorner:Landroid/graphics/Rect;

.field public mTouchSlop:F

.field public final mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

.field public final mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

.field public final mUserResizeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/pip/phone/PipTouchState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Ljava/lang/Runnable;Lcom/android/wm/shell/common/pip/PipUiEventLogger;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/pip/PipPerfHintController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    iput-object p11, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p12, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    iput-object p8, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateMovementBoundsRunnable:Ljava/lang/Runnable;

    iput-object p10, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    new-instance p1, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    invoke-direct {p1}, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mResetTouchStateRunnable:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final finishResize()V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    add-int/2addr v3, v4

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v6, v5, :cond_4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    iget v5, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v0}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v1, v0}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iput-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object v1, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_5

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v11, "mPipFinishResizeWCTRunnable is set to be called once window updates"

    const/4 v12, 0x0

    const-wide v8, -0x767089ac659ece97L

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-boolean v1, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_7

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v1, "PipTaskOrganizer"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "%s: skip scheduleAnimateResizePip, entering pip deferred"

    const-wide v3, 0x319de4e337833f81L    # 1.0828452159732193E-69

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const/4 v6, 0x6

    const/16 v7, 0xfa

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUpdateResizeBoundsCallback:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    move-object v1, v5

    move-object v5, v8

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILjava/util/function/Consumer;)V

    :cond_7
    :goto_1
    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v1, v0, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mResetTouchStateRunnable:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipUiEventLogger:Lcom/android/wm/shell/common/pip/PipUiEventLogger;

    sget-object v0, Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_RESIZE:Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/common/pip/PipUiEventLogger$PipUiEventEnum;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    :goto_3
    return-void
.end method

.method public getLastResizeBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final isWithinDragResizeRegion(II)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDragCornerSize:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    if-ge v4, v3, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iget-boolean v2, v2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    if-nez v2, :cond_1

    const-string v0, "PipResizeGestureHandler"

    const-string v1, "pip input event not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    instance-of v3, v1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_26

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    if-eq v3, v5, :cond_3

    if-ne v3, v6, :cond_4

    :cond_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v3, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    :cond_4
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->onPinchResize(Landroid/view/MotionEvent;)V

    goto/16 :goto_11

    :cond_5
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x5

    if-nez v3, :cond_11

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsSysUiStateValid:Z

    if-eqz v1, :cond_6

    float-to-int v1, v4

    float-to-int v3, v8

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result v1

    if-eqz v1, :cond_6

    move v10, v5

    goto :goto_0

    :cond_6
    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    if-eqz v10, :cond_26

    float-to-int v1, v4

    float-to-int v3, v8

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v7, v6, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v12

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v7, v10, v11, v13, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    const/16 v11, 0xa

    const/4 v12, 0x6

    const/16 v13, 0x9

    if-ne v5, v10, :cond_7

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    if-eq v5, v10, :cond_8

    :cond_7
    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-ne v5, v10, :cond_c

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v7, :cond_c

    :cond_8
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_9

    iput v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    goto :goto_1

    :cond_9
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_a

    iput v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    goto :goto_1

    :cond_a
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_b

    iput v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    goto :goto_1

    :cond_b
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_c

    iput v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_c
    :goto_1
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-eq v5, v10, :cond_d

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-eq v5, v7, :cond_d

    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/2addr v5, v9

    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_d
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->top:I

    if-eq v5, v9, :cond_e

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-eq v5, v7, :cond_e

    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/2addr v5, v12

    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_e
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v9, :cond_f

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-eq v5, v7, :cond_f

    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/2addr v5, v11

    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_f
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v5, :cond_10

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_10

    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    or-int/2addr v1, v13

    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_11

    :cond_11
    iget-boolean v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-eqz v11, :cond_1c

    if-eq v3, v5, :cond_1b

    const/4 v1, 0x2

    if-eq v3, v1, :cond_13

    if-eq v3, v6, :cond_1b

    if-eq v3, v9, :cond_12

    goto/16 :goto_11

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->resetState()V

    goto/16 :goto_11

    :cond_13
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float v3, v4, v3

    float-to-double v13, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, v8, v1

    float-to-double v10, v1

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    float-to-double v13, v1

    cmpl-double v1, v9, v13

    if-lez v1, :cond_14

    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_14
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz v1, :cond_26

    invoke-virtual {v7}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    :cond_15
    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    if-eqz v3, :cond_26

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_16

    iget v7, v1, Landroid/graphics/Rect;->left:I

    :goto_2
    int-to-float v7, v7

    goto :goto_3

    :cond_16
    iget v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :goto_3
    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_17

    iget v3, v1, Landroid/graphics/Rect;->top:I

    :goto_4
    int-to-float v3, v3

    goto :goto_5

    :cond_17
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :goto_5
    invoke-virtual {v6, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_18

    iget v7, v1, Landroid/graphics/Rect;->right:I

    :goto_6
    int-to-float v7, v7

    goto :goto_7

    :cond_18
    iget v7, v1, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :goto_7
    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_19

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_8
    int-to-float v1, v1

    goto :goto_9

    :cond_19
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_8

    :goto_9
    invoke-virtual {v3, v7, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v4, v8}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v5

    invoke-virtual/range {v13 .. v21}, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    iget v1, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1a

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    :cond_1a
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_a
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v0, v3, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setHasUserResizedPip()V

    goto/16 :goto_11

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    goto/16 :goto_11

    :cond_1c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v2

    if-eqz v2, :cond_26

    float-to-int v2, v4

    float-to-int v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result v4

    const/16 v6, 0x3e8

    if-eqz v4, :cond_1d

    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    if-eq v4, v6, :cond_1d

    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    :cond_1d
    const/16 v4, 0x4002

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->isWithinDragResizeRegion(II)Z

    move-result v4

    xor-int/2addr v4, v5

    if-nez v4, :cond_25

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpTopRightCorner:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTmpBottomLeftCorner:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_b

    :cond_1f
    move v2, v6

    goto :goto_d

    :cond_20
    :goto_b
    const/16 v2, 0x3f8

    goto :goto_d

    :cond_21
    :goto_c
    const/16 v2, 0x3f9

    :goto_d
    iget-object v3, v12, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v3

    const/16 v4, 0x2789

    if-eqz v1, :cond_23

    const/16 v1, 0x4e21

    if-eq v2, v1, :cond_22

    packed-switch v2, :pswitch_data_0

    goto :goto_f

    :pswitch_0
    const/16 v1, 0x4e28

    :goto_e
    move v6, v1

    goto :goto_10

    :pswitch_1
    const/16 v1, 0x4e29

    goto :goto_e

    :pswitch_2
    const/16 v1, 0x4e27

    goto :goto_e

    :pswitch_3
    const/16 v1, 0x4e26

    goto :goto_e

    :cond_22
    move v6, v4

    goto :goto_10

    :cond_23
    if-eqz v3, :cond_24

    if-eq v2, v6, :cond_22

    packed-switch v2, :pswitch_data_1

    goto :goto_f

    :pswitch_4
    const/16 v1, 0x278c

    goto :goto_e

    :pswitch_5
    const/16 v1, 0x278d

    goto :goto_e

    :pswitch_6
    const/16 v1, 0x278b

    goto :goto_e

    :pswitch_7
    const/16 v1, 0x278a

    goto :goto_e

    :cond_24
    :goto_f
    move v6, v2

    :cond_25
    :goto_10
    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    if-eq v1, v6, :cond_26

    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPointerIconType:I

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v6}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_26
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x3f6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onPinchResize(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v2, v6, :cond_0

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    :cond_0
    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    iput v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    iput-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->finishResize()V

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    return-void

    :cond_2
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    const/4 v10, 0x5

    if-ne v2, v10, :cond_3

    iget v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-ne v10, v5, :cond_3

    iget v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v10, v5, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    iput-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    iput v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    iget v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v11

    invoke-virtual {v10, v4, v11}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v10

    iget v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v9}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz v4, :cond_3

    new-instance v9, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

    const-string v10, "onPinchResize"

    invoke-virtual {v4, v9, v10}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_3
    if-ne v2, v8, :cond_8

    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    if-eq v2, v5, :cond_8

    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    if-ne v4, v5, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v2

    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mFirstIndex:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v4

    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    iget v8, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mSecondIndex:I

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {v8, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v5, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->pilferPointers()V

    iput-boolean v6, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPhonePipMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu()V

    :cond_6
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    if-eqz v1, :cond_8

    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownSecondPoint:Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastPoint:Landroid/graphics/PointF;

    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastSecondPoint:Landroid/graphics/PointF;

    iget-object v13, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    iget-object v14, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPinchResizingAlgorithm:Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    iget v1, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_7

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDownBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mLastResizeBounds:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setHasUserResizedPip()V

    nop

    :cond_8
    :goto_1
    return-void
.end method

.method public pilferPointers()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    return-void
.end method

.method public final reloadResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cf0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDelta:I

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnableDragCornerResize:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mTouchSlop:F

    return-void
.end method

.method public final resetState()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reset state callers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "PipResizeGestureHandler"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mCtrlType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAngle:F

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOngoingPinchToResize:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    return-void
.end method

.method public final setUserResizeBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateIsEnabled()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const-string v1, "pip-resize"

    iget v2, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;I)V

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

.method public updateMaxSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public updateMinSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMinSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
