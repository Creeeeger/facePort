.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAnimator"
.end annotation


# instance fields
.field private blacklist mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsAnimating:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method blacklist getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    return-object v0
.end method

.method blacklist putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method blacklist removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method blacklist removeItemAnimation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public whitelist test-api run()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v7

    and-int/2addr v2, v7

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;->onItemAnimatorEnd()V

    :cond_3
    :goto_2
    return-void
.end method

.method blacklist start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->run()V

    return-void
.end method
