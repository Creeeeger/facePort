.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    .line 351
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 373
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationCancel #1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 377
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 363
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->invalidate()V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 369
    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 355
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 359
    :cond_0
    return-void
.end method
