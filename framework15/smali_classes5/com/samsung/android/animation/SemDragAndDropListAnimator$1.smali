.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;
.super Ljava/lang/Object;
.source "SemDragAndDropListAnimator.java"

# interfaces
.implements Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;->initListeners()V
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onItemAnimatorEnd()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mListItemSelectionAnimating:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDropDonePending:Z

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    const-string v1, "SemDragAndDropListAnimator"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initListeners : onItemAnimatorEnd : mDndController.dropDone #1 , mFirstDragPos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDragPos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDragPos:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->speakDragReleaseForAccessibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->resetDndPositionValues()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "initListeners : onItemAnimatorEnd : dndListener.onDragAndDropEnd() #1"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_3
    return-void
.end method
