.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    .line 744
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 766
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationCancel #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 768
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 769
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 770
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 756
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 759
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 762
    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 748
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 752
    :cond_0
    return-void
.end method
