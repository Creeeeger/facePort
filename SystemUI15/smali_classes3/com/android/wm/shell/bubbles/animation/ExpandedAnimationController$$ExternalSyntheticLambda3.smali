.class public final synthetic Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$1:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$2:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v4, p1, v3}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    move-result-object v3

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$1:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iget v8, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_0
    iget-object v7, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    instance-of v3, v1, Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BadgedImageView;->mBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    const-string v8, "Overflow"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v8, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mStackOffsetPx:F

    mul-float/2addr v3, v8

    :goto_1
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v3

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$2:Z

    const/4 v7, 0x0

    if-nez v3, :cond_7

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda3;->f$3:Z

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_4

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    if-nez v5, :cond_6

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    :goto_3
    move p0, v6

    goto :goto_5

    :cond_6
    move p0, v7

    goto :goto_5

    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_8
    if-nez v5, :cond_6

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mCollapsePoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->isFirstChildXLeftOfCenter(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :goto_5
    if-eqz p0, :cond_9

    mul-int/lit8 v1, p1, 0xa

    goto :goto_6

    :cond_9
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0xa

    :goto_6
    if-eqz p0, :cond_a

    if-eqz p1, :cond_b

    :cond_a
    if-nez p0, :cond_c

    iget-object p0, v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    sub-int/2addr p0, v6

    if-ne p1, p0, :cond_c

    :cond_b
    move p0, v6

    goto :goto_7

    :cond_c
    move p0, v7

    :goto_7
    if-eqz v5, :cond_d

    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    goto :goto_8

    :cond_d
    sget-object p1, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    :goto_8
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Runnable;

    if-eqz p0, :cond_e

    iget-object v4, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mLeadBubbleEndAction:Ljava/lang/Runnable;

    :cond_e
    aput-object v4, v3, v7

    new-instance p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {p0, v0, v4}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;I)V

    aput-object p0, v3, v6

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_f
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathXProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$1;

    iget-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mCurrentPointOnPathYProperty:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$2;

    invoke-static {p2, p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    iput-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$3;

    invoke-direct {v0, p2, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator$3;-><init>(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;[Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xaf

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mAnimatedProperties:Ljava/util/Map;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$3;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mInitialPropertyValues:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->this$0:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p0, v1

    iput-wide p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStartDelay:J

    const/high16 p0, 0x43c80000    # 400.0f

    iput p0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    return-void
.end method
