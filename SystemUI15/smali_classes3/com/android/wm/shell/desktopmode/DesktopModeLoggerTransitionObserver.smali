.class public final Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final desktopModeEventLogger:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger;

.field public final idSequence$delegate:Lkotlin/Lazy;

.field public loggerInstanceId:Lcom/android/internal/logging/InstanceId;

.field public final tasksSavedForRecents:Landroid/util/SparseArray;

.field public final transitions:Lcom/android/wm/shell/transition/Transitions;

.field public final visibleFreeformTaskInfos:Landroid/util/SparseArray;

.field public wasPreviousTransitionExitToOverview:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->transitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->desktopModeEventLogger:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger;

    sget-object p3, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver$idSequence$2;->INSTANCE:Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver$idSequence$2;

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->idSequence$delegate:Lkotlin/Lazy;

    sget-boolean p3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->tasksSavedForRecents:Landroid/util/SparseArray;

    return-void
.end method

.method public static buildTaskUpdateForTask(Landroid/app/TaskInfo;)Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;
    .locals 10

    new-instance v9, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;

    iget v1, p0, Landroid/app/TaskInfo;->taskId:I

    iget v2, p0, Landroid/app/TaskInfo;->userId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    if-eqz p0, :cond_0

    iget v5, p0, Landroid/graphics/Point;->x:I

    iget v6, p0, Landroid/graphics/Point;->y:I

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;

    iget v3, v9, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    iget v4, v9, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    iget v1, v9, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    iget v2, v9, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;-><init>(IIIIII)V

    :cond_0
    return-object v9
.end method

.method public static isExitToRecentsTransition(Landroid/window/TransitionInfo;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requireTaskInfo(Landroid/window/TransitionInfo$Change;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected TaskInfo in the Change"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addTaskInfosToCachedMap(Landroid/app/TaskInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final getLoggerSessionId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final identifyAndLogTaskUpdates(ILandroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move v5, v3

    :goto_0
    iget-object v6, v4, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->desktopModeEventLogger:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger;

    if-ge v5, v2, :cond_1

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/TaskInfo;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v8}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->buildTaskUpdateForTask(Landroid/app/TaskInfo;)Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "DesktopModeLogger: Logging task added, session: %s taskId: %s"

    invoke-static {v8, v6, v9}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v14, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    iget v15, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    const/16 v10, 0x333

    const/4 v11, 0x1

    iget v12, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    iget v13, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    iget v6, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    iget v7, v7, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, p1

    invoke-static/range {v10 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIII)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/TaskInfo;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v5}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->buildTaskUpdateForTask(Landroid/app/TaskInfo;)Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "DesktopModeLogger: Logging task remove, session: %s taskId: %s"

    invoke-static {v7, v5, v8}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v13, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    iget v14, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    const/16 v9, 0x333

    const/4 v10, 0x2

    iget v11, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    iget v12, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    iget v15, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    iget v4, v4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    move/from16 v16, v4

    move/from16 v17, p1

    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIII)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    invoke-static {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->isExitToRecentsTransition(Landroid/window/TransitionInfo;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->tasksSavedForRecents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DesktopModeLogger: Recents animation running, saving tasks for later"

    invoke-static {p4, p1, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->tasksSavedForRecents:Landroid/util/SparseArray;

    iget-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    invoke-static {p1, p4}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/16 p4, 0xc

    if-ne p1, p4, :cond_1

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->requireTaskInfo(Landroid/window/TransitionInfo$Change;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->requireTaskInfo(Landroid/window/TransitionInfo$Change;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->requireTaskInfo(Landroid/window/TransitionInfo$Change;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->requireTaskInfo(Landroid/window/TransitionInfo$Change;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/TaskInfo;

    invoke-virtual {v4}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v2, :cond_8

    invoke-virtual {v3}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v2, :cond_7

    goto :goto_4

    :cond_7
    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    invoke-static {v4}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_b

    :goto_5
    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_b
    :goto_6
    iget v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    :cond_c
    sget-object p1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DesktopModeLogger: taskInfo map after processing changes %s"

    invoke-static {v1, p1, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    :goto_7
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->tasksSavedForRecents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v2, p3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopModeLogger: Canceled recents animation, restoring tasks"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->tasksSavedForRecents:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, p1}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-static {v1, v0}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->tasksSavedForRecents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    move-object p1, v1

    :cond_d
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x332

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->desktopModeEventLogger:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger;

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->identifyAndLogTaskUpdates(ILandroid/util/SparseArray;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, p4, :cond_e

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->SCREEN_OFF:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    goto :goto_8

    :cond_e
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p4

    if-ne p4, v4, :cond_f

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->TASK_FINISHED:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    goto :goto_8

    :cond_f
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p4

    const/16 v1, 0x451

    if-ne p4, v1, :cond_10

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->DRAG_TO_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    goto :goto_8

    :cond_10
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p4

    const/16 v1, 0x452

    if-ne p4, v1, :cond_11

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->APP_HANDLE_MENU_BUTTON_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    goto :goto_8

    :cond_11
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p4

    const/16 v1, 0x453

    if-ne p4, v1, :cond_12

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->KEYBOARD_SHORTCUT_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    goto :goto_8

    :cond_12
    invoke-static {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->isExitToRecentsTransition(Landroid/window/TransitionInfo;)Z

    move-result p4

    if-eqz p4, :cond_13

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->RETURN_HOME_OR_OVERVIEW:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    goto :goto_8

    :cond_13
    sget-object p4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const-string v5, "Unknown exit reason for transition type "

    invoke-static {v1, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p4, v1, v5}, Lcom/android/internal/protolog/common/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p4, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->UNKNOWN_EXIT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;

    :goto_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DesktopModeLogger: Logging session exit, session: %s reason: %s"

    invoke-static {v3, v1, v5}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$ExitReason;->getReason()I

    move-result p4

    invoke-static {v2, v4, p3, p4, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    goto/16 :goto_b

    :cond_14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-eqz p4, :cond_1e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-nez p4, :cond_1e

    iget-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz p4, :cond_15

    goto/16 :goto_a

    :cond_15
    iget-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->idSequence$delegate:Lkotlin/Lazy;

    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p4

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0xb

    const/4 v5, 0x1

    if-ne v1, v4, :cond_16

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->SCREEN_ON:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_16
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0x3f3

    if-ne v1, v4, :cond_17

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->APP_HANDLE_DRAG:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_17
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0x44d

    if-ne v1, v4, :cond_18

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->APP_HANDLE_MENU_BUTTON:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_18
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0x44e

    if-ne v1, v4, :cond_19

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->APP_FROM_OVERVIEW:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_19
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/16 v4, 0x44f

    if-ne v1, v4, :cond_1a

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->KEYBOARD_SHORTCUT_ENTER:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_1a
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1b

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->OVERVIEW:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_1b
    iget-boolean v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->wasPreviousTransitionExitToOverview:Z

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->OVERVIEW:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_1c
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    if-ne v1, v5, :cond_1d

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->APP_FREEFORM_INTENT:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    goto :goto_9

    :cond_1d
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    const-string v6, "Unknown enter reason for transition type "

    invoke-static {v4, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lcom/android/internal/protolog/common/ProtoLog;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->UNKNOWN_ENTER:Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "DesktopModeLogger: Logging session enter, session: %s reason: %s"

    invoke-static {v4, v3, v6}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$EnterReason;->getReason()I

    move-result v1

    invoke-static {v2, v5, v1, p3, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p3

    invoke-virtual {p0, p3, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->identifyAndLogTaskUpdates(ILandroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_b

    :cond_1e
    :goto_a
    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    if-eqz p3, :cond_1f

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p3

    invoke-virtual {p0, p3, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->identifyAndLogTaskUpdates(ILandroid/util/SparseArray;Landroid/util/SparseArray;)V

    :cond_1f
    :goto_b
    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    iget-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->visibleFreeformTaskInfos:Landroid/util/SparseArray;

    invoke-static {p3, p1}, Landroidx/core/util/SparseArrayKt;->putAll(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-static {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->isExitToRecentsTransition(Landroid/window/TransitionInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->wasPreviousTransitionExitToOverview:Z

    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method

.method public final setLoggerSessionId(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;->loggerInstanceId:Lcom/android/internal/logging/InstanceId;

    return-void
.end method
