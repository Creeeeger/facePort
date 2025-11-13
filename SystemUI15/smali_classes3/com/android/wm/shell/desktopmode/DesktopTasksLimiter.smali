.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final minimizeTransitionObserver:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;

.field public final shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final taskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->taskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance p2, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;)V

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->minimizeTransitionObserver:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method

.method public static createOrderedTaskListWithGivenTaskInFront(ILjava/util/List;)Ljava/util/List;
    .locals 4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, p0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getTaskToMinimizeIfNeeded(Ljava/util/List;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/wm/shell/shared/DesktopModeStatus;->MAX_TASK_LIMIT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "DesktopTasksLimiter: no need to minimize; tasks below limit"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "DesktopTasksLimiter: taskToMinimize == null"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    return-object p0
.end method

.method public final getTransitionObserver()Lcom/android/wm/shell/transition/Transitions$TransitionObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->minimizeTransitionObserver:Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter$MinimizeTransitionObserver;

    return-object p0
.end method
