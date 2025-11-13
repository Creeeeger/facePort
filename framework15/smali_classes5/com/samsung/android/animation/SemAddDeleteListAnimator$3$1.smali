.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationCancel #1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationEnd #1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    :cond_1
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAnimationStart #1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    :cond_1
    return-void
.end method
