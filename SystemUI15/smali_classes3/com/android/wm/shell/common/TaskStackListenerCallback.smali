.class public interface abstract Lcom/android/wm/shell/common/TaskStackListenerCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public onActivityDismissingSplitTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onActivityPinned(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 0

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    return-void
.end method

.method public onLockTaskModeChanged()V
    .locals 0

    return-void
.end method

.method public onRecentTaskListUpdated()V
    .locals 0

    return-void
.end method

.method public onTaskCreated()V
    .locals 0

    return-void
.end method

.method public onTaskDisplayChanged(II)V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront()V
    .locals 0

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0}, Lcom/android/wm/shell/common/TaskStackListenerCallback;->onTaskMovedToFront()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    return-void
.end method
