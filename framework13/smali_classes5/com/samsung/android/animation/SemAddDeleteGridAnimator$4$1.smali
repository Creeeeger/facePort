.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    .line 590
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 612
    const-string v0, "SemAddDeleteGridAnimator"

    const-string v1, "onAnimationCancel #2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    .line 615
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 616
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 602
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 608
    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 594
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 598
    :cond_0
    return-void
.end method
