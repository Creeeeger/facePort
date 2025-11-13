.class public final Lcom/android/wm/shell/bubbles/StackEducationView$show$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isStackOnLeft:Z

.field public final synthetic $stackPadding:I

.field public final synthetic $stackPosition:Landroid/graphics/PointF;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;ZILandroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->$isStackOnLeft:Z

    iput p3, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->$stackPadding:I

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->$stackPosition:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/StackEducationView;->view$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->$isStackOnLeft:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    iget v3, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->$stackPadding:I

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->$stackPosition:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, v2, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v6, v6, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    add-int/2addr v6, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v2, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v1, v5

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    iget v1, v4, Landroid/graphics/PointF;->y:F

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/StackEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$show$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
