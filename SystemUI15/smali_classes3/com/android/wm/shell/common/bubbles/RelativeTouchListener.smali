.class public abstract Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public movedEnough:Z

.field public performedLongClick:Z

.field public touchDown:Landroid/graphics/PointF;

.field public touchSlop:I

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final viewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchSlop:I

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public abstract onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    :cond_1
    move v9, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_d

    const/4 v11, 0x0

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    if-nez p2, :cond_3

    return v10

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iput-boolean v10, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->movedEnough:Z

    iput-object v11, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->onCancel()V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    if-nez v0, :cond_6

    return v10

    :cond_6
    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->movedEnough:Z

    if-nez v0, :cond_7

    float-to-double v3, v2

    float-to-double v5, v9

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iget v3, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->performedLongClick:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->movedEnough:Z

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->movedEnough:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V

    goto/16 :goto_2

    :cond_8
    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    if-nez p2, :cond_9

    return v10

    :cond_9
    iget-boolean p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->movedEnough:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v5, p2, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->onUp(Landroid/view/View;FFFF)V

    goto :goto_1

    :cond_a
    iget-boolean p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->performedLongClick:Z

    if-nez p2, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iput-boolean v10, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->movedEnough:Z

    iput-object v11, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    goto :goto_2

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    return v10

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchSlop:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {v0, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v10, p0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;->performedLongClick:Z

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_f

    new-instance v0, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;

    invoke-direct {v0, p1, p0}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener$onTouch$1;-><init>(Landroid/view/View;Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_2
    return v1
.end method

.method public abstract onUp(Landroid/view/View;FFFF)V
.end method
