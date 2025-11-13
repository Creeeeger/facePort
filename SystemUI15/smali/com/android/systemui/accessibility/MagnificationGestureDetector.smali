.class public final Lcom/android/systemui/accessibility/MagnificationGestureDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

.field public mDetectSingleTap:Z

.field public mDraggingDetected:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

.field public final mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

.field public final mPointerDown:Landroid/graphics/PointF;

.field public final mPointerLocation:Landroid/graphics/PointF;

.field public final mTouchSlopSquare:I

.field public mVibratorNoti:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    new-instance p1, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mOnGestureListener:Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;

    iget-object v6, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_7

    const/4 p2, 0x0

    if-eq v2, v4, :cond_5

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_6

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    :goto_0
    move v4, p2

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    iget-boolean v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    if-nez p2, :cond_3

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v4, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mVibratorNoti:Z

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-virtual {p2, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/PointF;->x:F

    sub-float p2, v0, p2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float v2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-interface {v5, p1, p2, v2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onDrag(Landroid/view/View;FF)Z

    move-result p0

    move v4, p0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->stopSingleTapDetectionIfNeeded(FF)V

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    if-eqz v0, :cond_6

    invoke-interface {v5, p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onSingleTap(Landroid/view/View;)V

    move p1, v4

    goto :goto_2

    :cond_6
    move p1, p2

    :goto_2
    invoke-interface {v5}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onFinish()Z

    move-result v0

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerLocation:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    iput-boolean p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    move v4, p1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    int-to-long v7, p2

    add-long/2addr v0, v7

    invoke-virtual {v6, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    if-eqz p2, :cond_8

    invoke-virtual {v6, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;-><init>(Lcom/android/systemui/accessibility/MagnificationGestureDetector;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mLongTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$LongTouchRunnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v6, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {v5}, Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;->onStart()V

    :goto_3
    return v4
.end method

.method public final stopSingleTapDetectionIfNeeded(FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mPointerDown:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    float-to-int p2, v0

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mTouchSlopSquare:I

    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDraggingDetected:Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mCancelTapGestureRunnable:Lcom/android/systemui/accessibility/MagnificationGestureDetector$$ExternalSyntheticLambda0;

    iget-object p2, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->mDetectSingleTap:Z

    :cond_1
    return-void
.end method
