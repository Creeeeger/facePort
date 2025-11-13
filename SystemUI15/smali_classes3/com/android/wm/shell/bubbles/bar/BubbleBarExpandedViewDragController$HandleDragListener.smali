.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;
.super Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isMoving:Z

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    invoke-direct {p0}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishDrag()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->isStuckToDismiss:Z

    if-nez v3, :cond_2

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onDragEnd()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dragListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$DragListener;

    check-cast v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->animationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "BubbleBarAnimationHelper"

    const-string v2, "Trying to animate expanded view to rest position without a bubble"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v4}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Overflow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v4, :cond_1

    iget v6, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    goto :goto_0

    :cond_1
    iget v6, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    :goto_0
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar(Z)I

    move-result v4

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedViewRestPosition(Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    sget-object v7, Landroid/view/View;->X:Landroid/util/Property;

    iget v8, v4, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    new-array v9, v0, [F

    aput v8, v9, v1

    invoke-static {v3, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v1

    sget-object v7, Landroid/view/View;->Y:Landroid/util/Property;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    new-array v8, v0, [F

    aput v4, v8, v1

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v6, v0

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v7, 0x3f800000    # 1.0f

    new-array v8, v0, [F

    aput v7, v8, v1

    invoke-static {v3, v4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v6, v8

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v0, [F

    aput v7, v9, v1

    invoke-static {v3, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v6, v9

    sget-object v4, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->CORNER_RADIUS:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    iget v9, v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mRestingCornerRadius:F

    new-array v10, v0, [F

    aput v9, v10, v1

    invoke-static {v3, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v9, 0x190

    invoke-virtual {v5, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    sget-object v6, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v0, [F

    aput v7, v9, v1

    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v8, [Landroid/animation/Animator;

    aput-object v5, v7, v1

    aput-object v4, v7, v0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$2;

    invoke-direct {v0, v2, v3, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->cancelAnimations()V

    iput-object v6, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mRunningDragAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    :cond_2
    iput-boolean v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->isMoving:Z

    return-void
.end method

.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->isStuckToDismiss:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->finishDrag()V

    return-void
.end method

.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mIsAnimating:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->bubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean p1, p1, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v0, p1, :cond_2

    move p2, v2

    :cond_2
    move p1, p2

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->initialLocationOnLeft:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    iget-object p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->screenSizeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    const/4 v0, 0x2

    div-int/2addr p2, v0

    iput p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->screenCenterX:I

    new-instance p2, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->exclRectWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->exclRectHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p2, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->screenCenterX:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    sub-float/2addr v1, v3

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dismissZone:Landroid/graphics/RectF;

    return v2
.end method

.method public final onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 8

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->isMoving:Z

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->isMoving:Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->animationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "BubbleBarAnimationHelper"

    const-string v1, "Trying to animate start drag without a bubble"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->setDragPivot(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    iget v2, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mDraggedCornerRadius:F

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v0, [F

    aput v3, v7, p4

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, p4

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v0, [F

    aput v3, v7, p4

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v0

    sget-object v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->CORNER_RADIUS:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    new-array v6, v0, [F

    aput v2, v6, p4

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    sget-object v5, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mHandleView:Lcom/android/wm/shell/bubbles/bar/BubbleBarHandleView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v0, [F

    aput p3, v6, p4

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, p4

    aput-object v2, v3, v0

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;

    invoke-direct {v2, p1, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->cancelAnimations()V

    iput-object v5, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mRunningDragAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedViewInitialTranslationX:F

    add-float/2addr p1, p5

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p5, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->expandedViewInitialTranslationY:F

    add-float/2addr p1, p6

    invoke-virtual {p5, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/bubbles/DismissView;->show()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p5, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->dismissZone:Landroid/graphics/RectF;

    if-eqz p5, :cond_2

    invoke-virtual {p5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    if-ne p2, v0, :cond_2

    goto :goto_5

    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    iget p5, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->screenCenterX:I

    int-to-float p5, p5

    cmpg-float p1, p1, p5

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, p4

    :goto_1
    iput-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    if-eq p2, v0, :cond_7

    if-eqz v0, :cond_4

    sget-object p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->RIGHT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    :goto_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->container:Landroid/widget/FrameLayout;

    const p6, 0x7f0d006a

    invoke-virtual {p2, p6, p5, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    iget-object p5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p5, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p5

    cmpl-float p3, p5, p3

    if-lez p3, :cond_6

    new-instance p3, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$showDropTarget$1;-><init>(Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;Landroid/view/View;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->animateOut(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->updateLocation(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->animateIn(Landroid/view/View;)V

    :goto_3
    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;->onChange(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V

    goto :goto_4

    :cond_7
    iget-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->stuckToDismissTarget:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->animateIn(Landroid/view/View;)V

    :cond_8
    :goto_4
    iput-boolean p4, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->stuckToDismissTarget:Z

    :goto_5
    return-void
.end method

.method public final onUp(Landroid/view/View;FFFF)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$HandleDragListener;->finishDrag()V

    return-void
.end method
