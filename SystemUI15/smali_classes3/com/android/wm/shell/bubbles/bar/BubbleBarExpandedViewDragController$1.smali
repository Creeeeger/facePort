.class final Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p5, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController;->animationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    if-eqz p5, :cond_0

    new-instance p2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$sam$java_lang_Runnable$0;

    invoke-direct {p2, p5}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedViewDragController$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->getExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p0, "BubbleBarAnimationHelper"

    const-string p1, "Trying to snap the expanded view to target without a bubble"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    invoke-static {p3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->setDragPivot(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    iget-object p4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mTmpLocation:[I

    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v2, p5

    aget p5, p4, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr p5, v2

    aput p5, p4, v1

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p5, v2

    aget v4, p4, v0

    div-float/2addr p5, v3

    float-to-int p5, p5

    add-int/2addr v4, p5

    aput v4, p4, v0

    iget-object p5, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    iget v3, p5, Landroid/graphics/PointF;->x:F

    aget p4, p4, v1

    int-to-float p4, p4

    sub-float/2addr v3, p4

    iget p4, p5, Landroid/graphics/PointF;->y:F

    int-to-float p5, v4

    sub-float/2addr p4, p5

    iget p5, p3, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mDraggedCornerRadius:F

    div-float/2addr p5, v2

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x7

    new-array v5, v5, [Landroid/animation/Animator;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v3

    new-array v3, v0, [F

    aput v7, v3, v1

    invoke-static {p3, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v1

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    add-float/2addr v6, p4

    new-array p4, v0, [F

    aput v6, p4, v1

    invoke-static {p3, v3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, v5, v0

    sget-object p4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v0, [F

    aput v2, v3, v1

    invoke-static {p3, p4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v5, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v2, v6, v1

    invoke-static {p3, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v5, v6

    sget-object v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->CORNER_RADIUS:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;

    new-array v6, v0, [F

    aput p5, v6, v1

    invoke-static {p3, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    const/4 v2, 0x4

    aput-object p5, v5, v2

    iget-object p5, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    const/high16 v2, 0x3fa00000    # 1.25f

    new-array v6, v0, [F

    aput v2, v6, v1

    invoke-static {p5, p4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const/4 p5, 0x5

    aput-object p4, v5, p5

    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    new-array p4, v0, [F

    aput v2, p4, v1

    invoke-static {p1, v3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p4, 0x6

    aput-object p1, v5, p4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p4, 0x190

    invoke-virtual {v4, p4, p5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p4, Lcom/android/wm/shell/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$3;

    invoke-direct {p1, p0, p3, p2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$3;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;Ljava/lang/Runnable;)V

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->cancelAnimations()V

    iput-object v4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mRunningDragAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
