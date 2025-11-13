.class Lcom/samsung/android/animation/SemListSortAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemListSortAnimator;->startFadeInTranslateAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemListSortAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemListSortAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemListSortAnimator;

    .line 165
    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 168
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$3;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 172
    :cond_0
    return-void
.end method
