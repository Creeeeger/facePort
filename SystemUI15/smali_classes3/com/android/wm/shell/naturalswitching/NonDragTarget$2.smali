.class public final Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

.field public final synthetic val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic val$startBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/graphics/Rect;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$startBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

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

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$startBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v2, v2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$lpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->val$blpTarget:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v0, p1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget$2;->this$0:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->-$$Nest$mupdateImageMatrix(Lcom/android/wm/shell/naturalswitching/NonDragTarget;Landroid/widget/ImageView;)V

    return-void
.end method
