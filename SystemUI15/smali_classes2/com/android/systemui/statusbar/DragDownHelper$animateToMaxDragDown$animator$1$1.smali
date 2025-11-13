.class public final Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $overshootAmount:F

.field public final synthetic $startExpansion:F

.field public final synthetic $target:F

.field public final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iput p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$overshootAmount:F

    iput p3, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$target:F

    iput p4, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$startExpansion:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    iget v0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$overshootAmount:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$target:F

    cmpg-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$startExpansion:F

    cmpg-float v1, v2, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->$startExpansion:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v2, v2, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget v2, v2, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->panelFlingOvershootAmount:F

    mul-float/2addr v2, v0

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$animateToMaxDragDown$animator$1$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setOverDragAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    :cond_1
    :goto_0
    return-void
.end method
