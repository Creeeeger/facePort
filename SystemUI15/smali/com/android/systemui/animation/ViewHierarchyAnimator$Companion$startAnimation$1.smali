.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $bounds:Ljava/util/Set;

.field public final synthetic $ephemeral:Z

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $view:Landroid/view/View;

.field public cancelled:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/Set;ZLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$bounds:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$ephemeral:Z

    iput-object p4, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    const v0, 0x7f0a0cf1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$bounds:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getOverrideTag()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$ephemeral:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    iget-object v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->recursivelyRemoveListener(Landroid/view/View;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->cancelled:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$startAnimation$1;->$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
