.class public final Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/ManageEducationView;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    sget v1, Lcom/android/wm/shell/bubbles/ManageEducationView;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->$expandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$1;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/ManageEducationView;->gotItButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$2;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$3;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1$3;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;->this$0:Lcom/android/wm/shell/bubbles/ManageEducationView;

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
