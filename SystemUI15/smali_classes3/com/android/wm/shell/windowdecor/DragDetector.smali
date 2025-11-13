.class public final Lcom/android/wm/shell/windowdecor/DragDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDragPointerId:I

.field public final mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

.field public final mInputDownPoint:Landroid/graphics/PointF;

.field public mIsDragEvent:Z

.field public mResultOfDownAction:Z

.field public mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    and-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    if-ne v0, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    if-nez v3, :cond_3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v0

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v5

    float-to-double v5, v3

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    int-to-double v7, v0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_2

    move v1, v4

    :cond_2
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    if-eqz v0, :cond_4

    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    return p0

    :cond_5
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    iput v3, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    return p1

    :cond_7
    invoke-interface {v2, p1, p2}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
