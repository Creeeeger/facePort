.class public final Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

.field public final synthetic val$startBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->val$startBounds:Landroid/graphics/Rect;

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

    sget-object v0, Lcom/android/wm/shell/common/split/DividerResizeLayout;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->val$startBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    iget-object v2, v2, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget$5;->this$1:Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/DividerResizeLayout$DividerResizeTarget;->updateViewBounds(Landroid/graphics/Rect;)V

    return-void
.end method
