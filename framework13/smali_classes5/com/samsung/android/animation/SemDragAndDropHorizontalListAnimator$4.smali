.class Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemDragAndDropHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    .line 550
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 554
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    if-eq v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v1, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndState()V

    .line 560
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "SemDragAndDropHListAnimator"

    const-string v1, "dndListener.onDragAndDropEnd() from onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 564
    :cond_1
    return-void
.end method
