.class public final Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    iget p4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p2

    invoke-static {p2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p2, :cond_1

    iget-boolean p4, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez p4, :cond_0

    iget-boolean p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesTransitionObserver;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean p4, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz p4, :cond_0

    iget-object p4, p2, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getTaskId()I

    move-result p4

    if-eq p4, v0, :cond_0

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq p4, p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
