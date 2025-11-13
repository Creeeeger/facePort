.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public final synthetic val$fromOutlineInset:Landroid/graphics/Rect;

.field public final synthetic val$isFirstTransition:Z

.field public final synthetic val$toOutlineInset:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$fromOutlineInset:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$toOutlineInset:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$isFirstTransition:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$fromOutlineInset:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$toOutlineInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mCurrentOutlineInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidateOutline()V

    iget-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->val$isFirstTransition:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v0, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$6;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
