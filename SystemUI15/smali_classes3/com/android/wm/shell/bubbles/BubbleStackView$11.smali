.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$11;
.super Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/android/wm/shell/common/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0, p5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setFlyoutStateForDragLength(F)V

    return-void
.end method

.method public final onUp(Landroid/view/View;FFFF)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    const/high16 v0, -0x3b060000    # -2000.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    :goto_0
    move v0, p5

    goto :goto_1

    :cond_0
    move v0, p2

    goto :goto_1

    :cond_1
    const/high16 v0, 0x44fa0000    # 2000.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    goto :goto_0

    :goto_1
    const/high16 v1, 0x3e800000    # 0.25f

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float p3, p3, v2

    if-gez p3, :cond_2

    :goto_2
    move p3, p5

    goto :goto_3

    :cond_2
    move p3, p2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpl-float p3, p3, v2

    if-lez p3, :cond_2

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    cmpl-float p1, p4, v1

    if-lez p1, :cond_4

    :goto_4
    move p1, p5

    goto :goto_5

    :cond_4
    move p1, p2

    goto :goto_5

    :cond_5
    cmpg-float p1, p4, v1

    if-gez p1, :cond_4

    goto :goto_4

    :goto_5
    if-nez v0, :cond_6

    if-eqz p3, :cond_7

    if-nez p1, :cond_7

    :cond_6
    move p2, p5

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p3, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mFlyout:Lcom/android/wm/shell/bubbles/BubbleFlyoutView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mHideFlyout:Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda6;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p1, p4, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateFlyoutCollapsed(FZ)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$11;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
