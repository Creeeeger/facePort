.class public final Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final layout:Landroid/view/View;

.field public final parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic this$0:Lcom/google/android/material/appbar/HeaderBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v0, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    iget-object v3, v0, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->this$0:Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v1, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->parent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p0, p0, Lcom/google/android/material/appbar/HeaderBehavior$FlingRunnable;->layout:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
