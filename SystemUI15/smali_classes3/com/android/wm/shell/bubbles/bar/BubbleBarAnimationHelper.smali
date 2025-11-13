.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public final mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

.field public mIsExpanded:Z

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public mRunningDragAnimator:Landroid/animation/Animator;

.field public final mScaleInSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mTmpLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 p2, 0x43960000    # 300.0f

    const v0, 0x3f666666    # 0.9f

    invoke-direct {p1, p2, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleInSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 p2, 0x44610000    # 900.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleOutSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-direct {p1}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const/4 p1, 0x2

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mTmpLocation:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static setDragPivot(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    return-void
.end method


# virtual methods
.method public final cancelAnimations()V
    .locals 1

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mRunningDragAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mRunningDragAnimator:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public final getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExpandedViewRestPosition(Landroid/util/Size;)Landroid/graphics/Point;
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v3, v3, Lcom/android/wm/shell/bubbles/DeviceConfig;->isRtl:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->DEFAULT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;->LEFT:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Point;->x:I

    :goto_2
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarTopOnScreen:I

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewPadding:I

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method public final updateExpandedView()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "BubbleBarAnimationHelper"

    const-string v0, "Trying to update the expanded view without a bubble"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overflow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v1, :cond_1

    iget v3, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mOverflowWidth:I

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mExpandedViewLargeScreenWidth:I

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewHeightForBubbleBar(Z)I

    move-result v1

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedViewRestPosition(Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setWindowBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mOverflowView:Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
