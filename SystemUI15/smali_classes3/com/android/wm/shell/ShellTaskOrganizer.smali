.class public Lcom/android/wm/shell/ShellTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCompatUI:Lcom/android/wm/shell/compatui/api/CompatUIHandler;

.field public final mDisplayChangingTasks:Landroid/util/SparseArray;

.field public final mFocusListeners:Landroid/util/ArraySet;

.field public final mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

.field public final mHomeTaskOverlayContainer:Landroid/view/SurfaceControl;

.field public mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mLaunchCookieToListener:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mLocusIdListeners:Landroid/util/ArraySet;

.field public final mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

.field public final mRecentTasks:Ljava/util/Optional;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field public final mTaskListeners:Landroid/util/SparseArray;

.field public final mTaskVanishedListeners:Landroid/util/ArraySet;

.field public final mTasks:Landroid/util/SparseArray;

.field public final mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

.field public final mVisibleTasksWithLocusId:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
    .locals 10

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p1

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/api/CompatUIHandler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/api/CompatUIHandler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Landroid/window/ITaskOrganizerController;",
            "Lcom/android/wm/shell/compatui/api/CompatUIHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p7}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskVanishedListeners:Landroid/util/ArraySet;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mDisplayChangingTasks:Landroid/util/SparseArray;

    new-instance p3, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v0, "home_task_overlay_container"

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    const-string v0, "ShellTaskOrganizer.mHomeTaskOverlayContainer"

    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mHomeTaskOverlayContainer:Landroid/view/SurfaceControl;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    new-instance p3, Lcom/android/wm/shell/ShellTaskOrganizer$1;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$1;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/api/CompatUIHandler;

    iput-object p6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    const/4 p2, 0x0

    invoke-virtual {p5, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    invoke-direct {p1, p9, p7}, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    if-eqz p8, :cond_1

    invoke-virtual {p8, p3}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    invoke-virtual {p1, p2}, Landroid/app/ActivityThread;->registerMultiWindowCoreStateListener(Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/api/CompatUIHandler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/compatui/api/CompatUIHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/api/CompatUIHandler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/content/Context;)V

    return-void
.end method

.method public static taskInfoToTaskListenerType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0

    :cond_1
    const/4 p0, -0x5

    return p0

    :cond_2
    const/4 p0, -0x4

    return p0

    :cond_3
    const/4 p0, -0x2

    return p0
.end method


# virtual methods
.method public final varargs addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v5, -0x32d058eeb0e6c4a7L    # -6.510563811425596E63

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    array-length v1, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget v5, p2, v4

    iget-object v6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Listener for listenerType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_2
    if-ltz p2, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v2

    if-eq v2, p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final changeByFreeformCaptionType(II)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v2, -0x5

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_HEADER_TYPE_SA_LOGGING:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "From header to handle"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v0, "From handle to header"

    :goto_0
    const-string v1, "2012"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->resizeTasksByFreeformCaptionType(I)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    monitor-exit p1

    return-object p0

    :cond_3
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final clearForcedResizablePackagesIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    invoke-interface {v1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "ShellTaskOrganizer"

    const-string v1, "clearForcedResizablePackagesIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mForcedResizableController:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final copySplashScreenView(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;II)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final createRootTask(ILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 12

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    int-to-long v4, v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v10, 0x0

    const-wide v7, -0x7528931e9e9fc1a5L    # -1.950154971824393E-256

    const/4 v9, 0x5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    const/4 p2, 0x0

    invoke-super {p0, p1, v1, v0, p2}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;Z)V

    return-void
.end method

.method public final createStageRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    const/4 v4, 0x6

    if-eqz v3, :cond_0

    int-to-long v5, v1

    int-to-long v7, v4

    int-to-long v9, v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v6, v7, v3}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v14, 0x15

    const/4 v15, 0x0

    const-wide v12, -0x54f634ff1254ca8fL

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v0, v3, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-super {v0, v1, v4, v2, v3}, Landroid/window/TaskOrganizer;->createStageRootTask(IIILandroid/os/IBinder;)V

    return-void
.end method

.method public final getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mCaptionType:I

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRunningTasks(I)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
    .locals 5

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v4

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz p2, :cond_4

    return-object p2

    :cond_4
    invoke-static {p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskInfoToTaskListenerType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    return-object p0
.end method

.method public final getVisibleTaskAppearedInfos()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isTargetTaskImeShowing(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayImeController;->isImeShowing(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mImePositionProcessor:Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;

    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$ImePositionProcessor;->mImeShown:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/api/CompatUIHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->supportCompatUI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->hasCompatUI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/api/CompatUIHandler;

    new-instance v0, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/compatui/api/CompatUIInfo;-><init>(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-interface {p0, v0}, Lcom/android/wm/shell/compatui/api/CompatUIHandler;->onCompatInfoChanged(Lcom/android/wm/shell/compatui/api/CompatUIInfo;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/api/CompatUIHandler;

    new-instance p2, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/wm/shell/compatui/api/CompatUIInfo;-><init>(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-interface {p0, p2}, Lcom/android/wm/shell/compatui/api/CompatUIHandler;->onCompatInfoChanged(Lcom/android/wm/shell/compatui/api/CompatUIInfo;)V

    return-void
.end method

.method public final notifyLocusIdChange(ILandroid/content/LocusId;Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;->onVisibilityChanged(ILandroid/content/LocusId;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V
    .locals 6

    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    iget-object v2, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_3

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-boolean v5, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    iget-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAppSplashScreenViewRemoved(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;II)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, 0x5a34d2e624c73a68L    # 3.524022602102863E126

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onImeDrawnOnTask(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;II)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onImmersiveModeChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v1, -0x5

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    instance-of v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->onImmersiveModeChanged(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onNewDexImmersiveModeChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v1, -0x5

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    instance-of v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSizeCompatRestartButtonAppeared(Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;)V
    .locals 1

    iget p1, p1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;->taskId:I

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 p1, 0x183

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSizeCompatRestartButtonClicked(Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;)V
    .locals 3

    iget p1, p1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;->taskId:I

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x183

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :goto_0
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onSplitLayoutChangeRequested(Lcom/samsung/android/multiwindow/TaskOrganizerInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "ShellTaskOrganizer.onTaskAppeared"

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/window/TaskAppearedInfo;

    invoke-direct {v1, p1, p2}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/window/TaskAppearedInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTaskAppeared(Landroid/window/TaskAppearedInfo;)V
    .locals 11

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    int-to-long v3, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide v6, -0x333f3388141dcef3L    # -5.398895585365824E61

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v6, v3}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v6, v3, v4}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x43559063ea1c3452L    # 2.427893325921108E16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mHomeTaskOverlayContainer:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mHomeTaskOverlayContainer:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_5
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 12

    const-string v0, "onTaskInfoChanged: cannot find TaskAppearedInfo, "

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide v7, -0x5b097ff2ec79c315L

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskAppearedInfo;

    if-nez v2, :cond_2

    const-string p0, "ShellTaskOrganizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v0

    invoke-virtual {p0, p1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v8, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v6

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v7}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v7}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v7

    iget v7, v7, Landroid/app/TaskInfo;->displayId:I

    iget v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v7, v8, :cond_4

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v7}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mDisplayChangingTasks:Landroid/util/SparseArray;

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-interface {v5, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->createRestartDialog(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_4
    if-nez v6, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {v5, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    if-nez v6, :cond_6

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForCompatUi(Landroid/app/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0, p1, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    :cond_7
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isAliasManaged:Z

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v5, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    if-eq v0, v5, :cond_9

    move v0, v3

    goto :goto_1

    :cond_9
    move v0, v4

    :goto_1
    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eq v2, v5, :cond_a

    move v2, v3

    goto :goto_2

    :cond_a
    move v2, v4

    :goto_2
    if-nez v0, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v2, p1, v5}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_c
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v0, :cond_e

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    move v3, v4

    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_f

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v5, :cond_f

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_11

    :cond_f
    if-eqz v3, :cond_11

    move v0, v4

    :goto_4
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;->onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_11
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz p0, :cond_12

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    invoke-virtual {p0, v4}, Landroid/app/AppCompatTaskInfo;->setIsFromLetterboxSingleTap(Z)V

    :cond_12
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 12

    const-string v0, "onTaskVanished: cannot find TaskAppearedInfo, "

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v4, v2

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide v7, 0x7983d68306813343L    # 2.197872656186723E277

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, v2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    if-eqz v4, :cond_2

    iget-boolean v5, v2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v5}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_1
    invoke-interface {v4, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskVanished(Landroid/app/TaskInfo;)V

    iget-object v2, v2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TaskAppearedInfo;

    if-nez v4, :cond_3

    const-string p0, "ShellTaskOrganizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_3
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v0

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v6, -0x5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    instance-of v6, v5, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/android/wm/shell/freeform/FreeformTaskListener;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_5

    iget-object v2, v5, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    instance-of v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    if-eqz v5, :cond_5

    check-cast v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v6, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;

    const/4 v7, 0x2

    invoke-direct {v6, p1, v7}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mHomeTaskOverlayContainer:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v6, 0x1f5583d2e3253e6fL    # 9.794050795364076E-158

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskVanishedListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer$TaskVanishedListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->clearForcedResizablePackagesIfNeeded()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_9

    invoke-interface {v0}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onSplitPairUpdateRequested()V

    :cond_9
    sget-boolean p0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p0, :cond_a

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_a
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final registerOrganizer()Ljava/util/List;
    .locals 14

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, 0x689e66168a13f22L

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/window/TaskOrganizer;->registerOrganizer()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TaskAppearedInfo;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, -0x329158d86ce1cc98L    # -1.0087912998072121E65

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/window/TaskAppearedInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeStartingWindow, removalInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTaskOrganizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowRemovalInfo;I)V

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    iget-boolean v0, p1, Landroid/window/StartingWindowRemovalInfo;->windowlessSurface:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v2}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;Landroid/window/StartingWindowRemovalInfo;I)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v1, v0, p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TASK_ORG_enabled:[Z

    const/4 p2, 0x3

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_1

    int-to-long p0, p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide v1, -0x1f433a407c9fcab3L    # -9.875853576349704E157

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->reparentChildSurfaceToTask(ILandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final requestAffordanceAnim(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    if-eqz p0, :cond_0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->animForAffordance(II)V

    :cond_0
    return-void
.end method

.method public final resetStashedFreeform(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskAppearedInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->resetStashedFreeform(IZ)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "addListenerForTaskId unknown taskId="

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setTaskSurfaceVisibility(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-eqz p0, :cond_0

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterOrganizer()V
    .locals 2

    invoke-super {p0}, Landroid/window/TaskOrganizer;->unregisterOrganizer()V

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;I)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z
    .locals 2

    if-ne p3, p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/TaskInfo;->displayId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->getTaskInfo(I)Landroid/app/TaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mDisplayChangingTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {p4, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->createRestartDialog(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-interface {p4, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-interface {p4}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->isMultiWindow()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->clearForcedResizablePackagesIfNeeded()V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
