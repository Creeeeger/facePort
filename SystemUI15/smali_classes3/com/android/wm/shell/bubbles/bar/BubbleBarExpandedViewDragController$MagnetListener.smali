.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReleasedInTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dragListener:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$DragListener;

    check-cast p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onDragEnd()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->dismissView:Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/bubbles/DismissView;->hide()V

    return-void
.end method

.method public final onStuckToTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->isStuckToDismiss:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->pinController:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->stuckToDismissTarget:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->initialLocationOnLeft:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->onLeft:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->listener:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->RIGHT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$1;->onChange(Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->dropTargetView:Landroid/view/View;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;

    invoke-direct {v1, p1, p0}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController$onStuckToDismissTarget$1$1;-><init>(ZLcom/android/wm/shell/common/bubbles/BaseBubblePinController;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/bubbles/BaseBubblePinController;->animateOut(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final onUnstuckFromTarget(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$magnetizeView$1;FFZ)V
    .locals 6

    const/4 p2, 0x1

    const/4 p3, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$MagnetListener;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->isStuckToDismiss:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->animationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p0, "BubbleBarAnimationHelper"

    const-string p1, "Trying to unsnap the expanded view from dismiss without a bubble"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->setDragPivot(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    iget p5, p4, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mDraggedCornerRadius:F

    const v0, 0x3ecccccd    # 0.4f

    div-float/2addr p5, v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, p2, [F

    aput v0, v4, p3

    invoke-static {p4, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, p3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, p2, [F

    aput v0, v5, p3

    invoke-static {p4, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, p2

    sget-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->CORNER_RADIUS:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    new-array v5, p2, [F

    aput p5, v5, p3

    invoke-static {p4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const/4 v0, 0x2

    aput-object p5, v2, v0

    iget-object p5, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    new-array v5, p2, [F

    aput v0, v5, p3

    invoke-static {p5, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const/4 v3, 0x3

    aput-object p5, v2, v3

    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-array p2, p2, [F

    aput v0, p2, p3

    invoke-static {p1, v4, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x190

    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;

    invoke-direct {p1, p0, p4}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$DragAnimatorListenerAdapter;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->cancelAnimations()V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mRunningDragAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method
