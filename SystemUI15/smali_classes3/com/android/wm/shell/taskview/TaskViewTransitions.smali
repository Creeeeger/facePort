.class public final Lcom/android/wm/shell/taskview/TaskViewTransitions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mLogHistory:Ljava/util/LinkedList;

.field public mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final mPending:Ljava/util/ArrayList;

.field public final mRegistered:[Z

.field public final mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field public final mTaskViews:Landroid/util/ArrayMap;

.field public final mTransitionObserver:Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    iput-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mLogHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewTransitionObserver;-><init>(Lcom/android/wm/shell/taskview/TaskViewTransitions;I)V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method


# virtual methods
.method public final closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeTaskView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewTransitions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public final findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findPending(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v2, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget v2, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    if-ne v2, v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public findPendingOpeningTransition(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v2, v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    return-object p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    invoke-direct {v2, p2, v1, v0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    iput-object p1, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method

.method public final recordLogHistory(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mLogHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mLogHistory:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mLogHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setFinishTransaction: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskViewTransitions"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iget-boolean v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setTaskViewVisible: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TaskViewTransitions"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iput-boolean p2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v2, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iget-object v3, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    new-instance v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    :goto_0
    const/4 p2, 0x0

    invoke-direct {v2, v1, v0, p1, p2}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    :goto_1
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v1, p5

    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object v2

    const-string v5, "TaskViewTransitions"

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v7

    const/16 v8, 0x2040

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-eqz v7, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startAnimation: Keyguard unoccluding with taskView, "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    const/16 v2, 0x65

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v2

    iget-object v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iput-object v7, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v2, v1, v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    move-object v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    return v6

    :cond_0
    iget-object v7, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    const-string v0, "Pending taskview transition but no task-views"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v8

    :cond_3
    if-eqz v2, :cond_4

    iget-object v7, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_0

    :cond_4
    move v7, v8

    :goto_0
    const/4 v9, 0x0

    move v10, v8

    move v12, v10

    move-object v11, v9

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    if-nez v14, :cond_5

    goto/16 :goto_d

    :cond_5
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v14

    invoke-static {v14}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v14

    const-string v15, "Found a non-TaskView task in a TaskView Transition. This shouldn\'t happen, so there may be a visual artifact: "

    if-eqz v14, :cond_d

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v14

    const/4 v8, 0x4

    if-ne v14, v8, :cond_6

    move v14, v6

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v6

    if-nez v6, :cond_8

    if-nez v14, :cond_8

    if-nez v2, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Found a non-TaskView task in a TaskView Transition. And non-pending transition. Is it real taskView? "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_7
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    :cond_8
    if-nez v6, :cond_9

    if-eqz v2, :cond_24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_9
    if-eqz v14, :cond_c

    if-eqz v2, :cond_a

    iget v14, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    if-ne v14, v8, :cond_a

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_a
    iget-object v8, v6, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    iget-object v8, v6, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v8, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v6, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v8, :cond_7

    iget-object v13, v6, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean v6, v6, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    invoke-interface {v8, v13, v6}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(IZ)V

    goto :goto_3

    :cond_c
    iget-object v8, v6, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6, v8}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->handleAndNotifyTaskRemoval(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v6}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    goto :goto_3

    :cond_d
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-static {v6}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_e

    const/4 v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_11

    if-eqz v2, :cond_10

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    iget-object v15, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v14, v15}, Landroid/app/ActivityManager$RunningTaskInfo;->containsLaunchCookie(Landroid/os/IBinder;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_5

    :cond_f
    iget-object v7, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    const/4 v14, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Found a launching TaskView in the wrong transition. All TaskView launches should be initiated by shell and in their own transition: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_11
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v14

    if-nez v14, :cond_12

    if-eqz v2, :cond_24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_12
    move-object/from16 v17, v14

    move v14, v7

    move-object/from16 v7, v17

    :goto_6
    if-nez v11, :cond_13

    new-instance v11, Landroid/window/WindowContainerTransaction;

    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_13
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    iput-object v9, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v15, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object v15, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "prepareOpenAnimationInternal: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "TaskViewTaskController"

    invoke-static {v15, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    iget-object v15, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-eqz v13, :cond_17

    iget-object v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v9, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v13, v9}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    iget-object v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v9, v13}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v9, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    check-cast v9, Lcom/android/wm/shell/taskview/TaskView;

    iget-object v13, v9, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v13}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v9, v9, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_14

    iget-object v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    iget-object v8, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v13, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    move/from16 v16, v14

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14, v14}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v13, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v8, v13, v14, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_14
    move/from16 v16, v14

    :goto_7
    iget-object v1, v15, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-nez v1, :cond_15

    goto :goto_8

    :cond_15
    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_8
    iget-object v1, v15, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-nez v1, :cond_16

    goto :goto_9

    :cond_16
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    :goto_9
    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v1, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v7}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->applyCaptionInsetsIfNeeded()V

    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mContext:Landroid/content/Context;

    instance-of v8, v1, Landroid/app/Activity;

    if-eqz v8, :cond_19

    iget-object v8, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v11, v8, v1}, Landroid/window/WindowContainerTransaction;->setTaskViewTaskOrganizerTaskId(Landroid/window/WindowContainerToken;I)V

    goto :goto_a

    :cond_17
    move/from16 v16, v14

    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v8, 0x1

    invoke-virtual {v11, v1, v8}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v1, v15, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    if-nez v1, :cond_18

    goto :goto_a

    :cond_18
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    :cond_19
    :goto_a
    if-eqz v6, :cond_1a

    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v8, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    :cond_1a
    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    iget-object v8, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    check-cast v8, Lcom/android/wm/shell/taskview/TaskView;

    iget-object v9, v8, Lcom/android/wm/shell/taskview/TaskView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v9

    if-eqz v9, :cond_1b

    new-instance v9, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;

    invoke-direct {v9, v8, v3, v1}, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/taskview/TaskView;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/taskview/TaskView;->runOnViewThread(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_1b
    new-instance v9, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda0;

    const/4 v13, 0x2

    invoke-direct {v9, v8, v1, v13}, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskView;II)V

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/taskview/TaskView;->runOnViewThread(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_b
    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    iget-object v8, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast v1, Lcom/android/wm/shell/taskview/TaskView;

    iget-object v9, v1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {v9}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isUsingShellTransitions()Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_c

    :cond_1d
    iget-object v9, v1, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object v13, v1, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v13}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setWindowBounds(Landroid/graphics/Rect;)V

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v8

    new-instance v9, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda0;

    const/4 v13, 0x1

    invoke-direct {v9, v1, v8, v13}, Lcom/android/wm/shell/taskview/TaskView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/taskview/TaskView;II)V

    invoke-virtual {v1, v9}, Lcom/android/wm/shell/taskview/TaskView;->runOnViewThread(Ljava/lang/Runnable;)V

    :cond_1e
    :goto_c
    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    if-eqz v1, :cond_1f

    iget-object v1, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v8, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v9, v7, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v13, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;

    invoke-direct {v13, v7, v6, v8, v1}, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda17;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;ZILandroid/content/ComponentName;)V

    invoke-interface {v9, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1f
    add-int/lit8 v12, v12, 0x1

    if-eqz v2, :cond_20

    iget-boolean v1, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mRemoveCalled:Z

    if-eqz v1, :cond_20

    invoke-virtual {v7}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->removeTask()V

    :cond_20
    move/from16 v7, v16

    goto/16 :goto_d

    :cond_21
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_24

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v1

    if-nez v1, :cond_22

    if-eqz v2, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_22
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v8, v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v6, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_23

    new-instance v6, Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    iget-object v8, v8, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual {v8, v14, v6}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v4, v8, v9, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->setFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/window/TransitionInfo$Change;->setSkipDefaultTransition(Z)V

    :cond_23
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_3

    :cond_24
    :goto_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p5

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_25
    if-eqz v7, :cond_27

    const-string v1, "Expected a TaskView launch in this transition but didn\'t get one, cleaning up the task view"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskNotFound:Z

    iget-object v2, v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v2, :cond_29

    if-eqz v2, :cond_26

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->handleAndNotifyTaskRemoval(Landroid/app/ActivityManager$RunningTaskInfo;)V

    new-instance v4, Landroid/window/WindowContainerTransaction;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v4, v2}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    iget-object v2, v1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    invoke-virtual {v2, v4, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->closeTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    :cond_26
    invoke-virtual {v1}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    goto :goto_e

    :cond_27
    if-nez v11, :cond_28

    if-nez v2, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v12, v1, :cond_28

    const/4 v1, 0x0

    return v1

    :cond_28
    if-nez v11, :cond_29

    if-nez v2, :cond_29

    if-nez v12, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startAnimation: failed, taskViews="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_29
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object/from16 v1, p5

    invoke-interface {v1, v11}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    const/4 v0, 0x1

    return v0
.end method

.method public final startNextTransition()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    iget-object v2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mWct:Landroid/window/WindowContainerTransaction;

    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v3, v1, v2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    return-void
.end method

.method public final startTaskView(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startTaskView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewTransitions"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    return-void
.end method
