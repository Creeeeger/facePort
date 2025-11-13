.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final synthetic f$1:Landroid/graphics/Point;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Point;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    iput p3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$2:I

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;->f$3:I

    sget-object v3, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v1, Landroid/graphics/Point;->y:I

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    add-float/2addr p0, p1

    int-to-float p1, v3

    sub-float/2addr p0, p1

    iget-object p1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v1, v4

    sub-float/2addr p1, v1

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
