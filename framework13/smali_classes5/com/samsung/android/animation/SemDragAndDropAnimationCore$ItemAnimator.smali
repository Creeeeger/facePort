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
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    .line 291
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method blacklist getItemAnimation(I)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    .locals 2
    .param p1, "position"    # I

    .line 305
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    return-object v0
.end method

.method blacklist putItemAnimation(ILcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "a"    # Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    .line 315
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method blacklist removeAll()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 330
    return-void
.end method

.method blacklist removeItemAnimation(I)V
    .locals 1
    .param p1, "position"    # I

    .line 322
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 323
    return-void
.end method

.method public whitelist test-api run()V
    .locals 8

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 345
    .local v0, "curTime":J
    const/4 v2, 0x1

    .line 347
    .local v2, "allFinished":Z
    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 348
    .local v3, "size":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 349
    iget-object v5, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 350
    .local v5, "position":I
    iget-object v6, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;

    .line 351
    .local v6, "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    if-nez v6, :cond_0

    .line 352
    goto :goto_1

    .line 354
    :cond_0
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->computeAnimation(J)V

    .line 355
    invoke-virtual {v6}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;->isFinished()Z

    move-result v7

    .line 356
    .local v7, "finished":Z
    and-int/2addr v2, v7

    .line 348
    .end local v5    # "position":I
    .end local v6    # "ia":Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    .end local v7    # "finished":Z
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 359
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 360
    if-nez v2, :cond_2

    .line 361
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 363
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    if-eqz v4, :cond_3

    .line 364
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    .line 366
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 367
    iget-object v4, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;->onItemAnimatorEnd()V

    .line 371
    :cond_3
    :goto_2
    return-void
.end method

.method blacklist start()V
    .locals 1

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->mIsAnimating:Z

    .line 339
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->this$0:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->run()V

    .line 341
    return-void
.end method
