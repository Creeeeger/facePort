.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    .line 728
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 756
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationCancel #2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 759
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 760
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 761
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 744
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationEnd #2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 748
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 749
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 752
    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 731
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationStart #2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isPressed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 734
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 740
    :cond_1
    return-void
.end method
