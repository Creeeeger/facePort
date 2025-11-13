.class public final Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mInterceptingTouches:Z

.field public final mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

.field public final mOnInterceptTouch:Ljava/lang/Runnable;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final mTouchDown:Landroid/graphics/PointF;

.field public final mTouchSlop:I

.field public mTrackingTouches:Z

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchSlop:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mOnInterceptTouch:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    const/4 v6, 0x1

    if-eqz v3, :cond_c

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v3, v6, :cond_6

    const/4 v9, 0x2

    if-eq v3, v9, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    if-eqz v1, :cond_e

    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    iget-object v1, v5, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateBackToExpanded()V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {v1, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return v6

    :cond_2
    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    if-nez v3, :cond_3

    float-to-double v3, v1

    float-to-double v7, v2

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    iget v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchSlop:I

    int-to-double v7, v1

    cmpl-double v1, v3, v7

    if-lez v1, :cond_3

    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mOnInterceptTouch:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->onMove(F)V

    :cond_5
    return v6

    :cond_6
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_7

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_7
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_9
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    check-cast v5, Lcom/android/wm/shell/bubbles/BubbleStackView$9;

    invoke-virtual {v5, v1}, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->onUp(F)V

    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {v1, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    return v6

    :cond_c
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x10502c7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v11, v3

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-direct {v9, v10, v3, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v9, v3, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-long v8, v8

    iget-object v10, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v12, v7

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v10, v11, v7, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v15

    const/4 v14, 0x0

    const-wide v11, -0x350e99f3e458c269L    # -1.0415355867599874E53

    const/4 v13, 0x5

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v6, v0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    return v6

    :cond_e
    :goto_0
    return v4
.end method
