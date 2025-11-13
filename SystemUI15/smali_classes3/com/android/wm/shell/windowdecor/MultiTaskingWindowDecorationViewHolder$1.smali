.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

.field public final synthetic val$hideView:Landroid/view/ViewGroup;

.field public final synthetic val$showView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->val$hideView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->val$showView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->val$hideView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->val$hideView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->val$showView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinAnimRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const p1, 0x7f0a0717

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const p1, 0x7f0a024d

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
