.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final mPendingTransitionTokensAndTasks:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->mPendingTransitionTokensAndTasks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksLimiter: transition %s finished"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->mPendingTransitionTokensAndTasks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->mPendingTransitionTokensAndTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$TaskDetails;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->mPendingTransitionTokensAndTasks:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->mPendingTransitionTokensAndTasks:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$TaskDetails;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->taskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget p4, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$TaskDetails;->taskId:I

    invoke-virtual {p3, p4}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isActiveTask(I)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p4, :cond_2

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    check-cast p3, Landroid/window/TransitionInfo$Change;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->taskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    const/4 p2, 0x1

    if-nez p3, :cond_4

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isVisibleTask(I)Z

    move-result p3

    xor-int/2addr p2, p3

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_6

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "DesktopTasksLimiter: task %d is not reordered to back nor invis"

    invoke-static {p1, p0, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    sget-object p2, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "DesktopTasksLimiter: marking %d as minimized"

    invoke-static {p3, p2, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$TaskDetails;->displayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "DesktopModeTaskRepository: minimize Task: display=%d, task=%d"

    invoke-static {p3, v0, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;->getOrCreate(I)Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->minimizedTasks:Landroid/util/ArraySet;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
