.class Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;
.super Ljava/lang/Object;
.source "SemDragAndDropHorizontalListAnimator.java"

# interfaces
.implements Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->initListeners()V
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

    .line 122
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onItemAnimatorEnd()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-boolean v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDropDonePending:Z

    .line 133
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget v1, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->resetDndPositionValues()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "SemDragAndDropHListAnimator"

    const-string v1, "dndListener.onDragAndDropEnd() from onItemAnimatorEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    invoke-interface {v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;->onDragAndDropEnd()V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setEnabled(Z)V

    .line 146
    :cond_3
    return-void
.end method
