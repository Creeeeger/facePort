.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemDragAndDropListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 562
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 566
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    const-string v2, "SemDragAndDropListAnimator"

    if-eq v0, v1, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchUpCancel : onAnimationEnd : mDndController.dropDone #2 , mFirstDragPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDragPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v1, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 572
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndState()V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_1

    .line 574
    const-string v0, "dndListener.onDragAndDropEnd() from onAnimationEnd() #3"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 577
    :cond_1
    return-void
.end method
