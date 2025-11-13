.class Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v0, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollTopDelta:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v0, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollBottomDelta:I

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;->onAutoScroll(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-virtual {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->reorderIfNeeded()V

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    iget v1, v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;->this$0:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->-$$Nest$fgetmView(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method
