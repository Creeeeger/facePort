.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$3:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p5, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$4:F

    iput p6, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$5:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$3:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$4:F

    iget p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda2;->f$5:F

    sget-object v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v5, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    cmpl-float v1, v4, p0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {p0, v4, p1, v4}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object p0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
