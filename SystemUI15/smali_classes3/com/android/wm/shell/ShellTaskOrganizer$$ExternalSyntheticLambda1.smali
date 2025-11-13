.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->shouldEnableRunningTasksForDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RecentTasksController"

    const-string v1, "Failed call onRunningTaskVanished"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    iget-object p1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->shouldEnableRunningTasksForDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "RecentTasksController"

    const-string v0, "Failed call onRunningTaskChanged"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void

    :pswitch_1
    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v2, v0, :cond_5

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
