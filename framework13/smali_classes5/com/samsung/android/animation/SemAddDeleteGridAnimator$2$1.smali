.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    .line 339
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 361
    const-string v0, "SemAddDeleteGridAnimator"

    const-string v1, "onAnimationCancel #1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 365
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 343
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmGridView(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$fgetmOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 347
    :cond_0
    return-void
.end method
