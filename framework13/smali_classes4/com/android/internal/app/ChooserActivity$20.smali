.class Lcom/android/internal/app/ChooserActivity$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->startGuideLabelAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist cnt:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$animSet:Landroid/animation/AnimatorSet;

.field final synthetic blacklist val$fadeOutAnim:Landroid/animation/ValueAnimator;

.field final synthetic blacklist val$parentView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/animation/AnimatorSet;Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 9876
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$20;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$20;->val$animSet:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$20;->val$fadeOutAnim:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/android/internal/app/ChooserActivity$20;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 9877
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 9879
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9880
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 9881
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 9882
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$20;->cnt:I

    goto :goto_0

    .line 9884
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20;->val$fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 9885
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$20;->val$fadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$20$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$20$1;-><init>(Lcom/android/internal/app/ChooserActivity$20;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9891
    :goto_0
    return-void
.end method
