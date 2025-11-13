.class public interface abstract Lcom/android/wm/shell/recents/IRecentTasksListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onRecentTasksChanged()V
.end method

.method public abstract onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onRunningTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method
