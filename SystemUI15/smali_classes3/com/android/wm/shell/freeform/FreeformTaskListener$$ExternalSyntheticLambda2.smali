.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;
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

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addOrMoveFreeformTaskToTop(II)V

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->unminimizeTask(II)V

    return-void

    :pswitch_0
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "DesktopTaskRepo: remove freeform task from ordered list: display=%d, taskId=%d"

    invoke-static {v3, v2, v4}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->freeformTasksInZOrder:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->boundsBeforeMaximizeByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->freeformTasksInZOrder:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepositoryKt;->access$toDumpString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DesktopTaskRepo: remaining freeform tasks: %s"

    invoke-static {v3, v1, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->unminimizeTask(II)V

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v1, :cond_4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    iget-object v7, v7, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v5, p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {v7}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    goto :goto_2

    :cond_2
    move v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    sget-object v1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DesktopTaskRepo: remove active task=%d"

    invoke-static {v2, v1, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz v5, :cond_6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x5e822c06884832fdL    # 1.8153067392154692E147

    const/4 v7, 0x1

    const-string v8, "Removing active freeform task: #%d"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, p0, v3}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    return-void

    :pswitch_1
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addOrMoveFreeformTaskToTop(II)V

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->unminimizeTask(II)V

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTask(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v2, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    const-string v8, "Adding active freeform task: #%d"

    const-wide v5, -0xf26d372860cd3fL

    const/4 v7, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    :cond_8
    return-void

    :pswitch_2
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTask(II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "Adding active freeform task: #%d"

    const-wide v3, -0xf26d372860cd3fL

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateVisibleFreeformTasks(IIZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
