.class public final Lcom/android/wm/shell/recents/RecentTasksController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/recents/TaskStackTransitionObserver$TaskStackTransitionObserverListener;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeTaskRepository:Ljava/util/Optional;

.field public final mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

.field public mIsSplitTaskIdValidationChecked:Z

.field public mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMultiSplitTasks:Landroid/util/SparseIntArray;

.field public final mPcFeatureEnabled:Z

.field public final mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSplitTasks:Landroid/util/SparseIntArray;

.field public final mTaskSplitBoundsMap:Ljava/util/Map;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTaskStackTransitionObserver:Lcom/android/wm/shell/recents/TaskStackTransitionObserver;

.field public mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/recents/TaskStackTransitionObserver;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Landroid/app/ActivityTaskManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;",
            "Lcom/android/wm/shell/recents/TaskStackTransitionObserver;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsSplitTaskIdValidationChecked:Z

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string p4, "android.hardware.type.pc"

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mPcFeatureEnabled:Z

    iput-object p5, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iput-object p7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackTransitionObserver:Lcom/android/wm/shell/recents/TaskStackTransitionObserver;

    iput-object p9, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    invoke-virtual {p2, p3, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    new-instance p2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    iget-object p0, p2, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController$1;-><init>(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final addSplitPair(IIILcom/android/wm/shell/util/SplitBounds;)Z
    .locals 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    if-eq p3, v2, :cond_2

    if-eq p1, p3, :cond_1

    if-ne p2, p3, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {v3, p4}, Lcom/android/wm/shell/util/SplitBounds;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    if-eq p3, v2, :cond_4

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :cond_5
    if-eq v0, v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    if-eq p3, v2, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    iget-object p3, p4, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p4, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    new-instance p3, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    invoke-direct {p3, p4}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;-><init>(Lcom/android/wm/shell/util/SplitBounds;)V

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->addGroupedRecentTaskSaveInfo(Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    :cond_8
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENT_TASKS_enabled:[Z

    const/4 p3, 0x1

    aget-boolean p0, p0, p3

    if-eqz p0, :cond_9

    int-to-long p0, p1

    int-to-long v0, p2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x5

    const/4 v6, 0x0

    const-wide v3, 0x787ccd4671113521L    # 2.4345380906557475E272

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return p3
.end method

.method public final clearAllSplitTaskIdsInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRecentTasks(III)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    if-ge p3, p1, :cond_5

    iget-boolean p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsSplitTaskIdValidationChecked:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsSplitTaskIdValidationChecked:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_5

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    :goto_2
    const-string p1, "RecentTasksController"

    const-string p3, "init split taskIds for sync with rawList"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    :cond_5
    :goto_3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    move p3, v0

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_6

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7fffffff

    move v3, v0

    move v4, v2

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isActiveTask(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isMinimizedTask(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_7

    :cond_8
    if-ne v4, v2, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_9
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_a
    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    iget v9, v5, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v6, v8, :cond_b

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    goto :goto_6

    :cond_b
    if-ne v6, v8, :cond_d

    if-eq v7, v8, :cond_d

    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    goto :goto_6

    :cond_c
    move v7, v8

    :cond_d
    :goto_6
    if-eq v6, v8, :cond_10

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    if-eq v7, v8, :cond_f

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->remove(I)V

    iget-object v8, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/util/SplitBounds;

    invoke-static {v5, v9, v6, v7}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    invoke-static {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    iget-object v7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/util/SplitBounds;

    invoke-static {v5, v9, v6}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-static {v5}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_11
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    new-array p0, v0, [Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {p0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forFreeformTasks([Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_12
    return-object v1
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final getSplitBoundsForTaskId(I)Lcom/android/wm/shell/util/SplitBounds;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/util/SplitBounds;

    return-object p0
.end method

.method public final getTopRunningTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, p1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasRecentTasksListener()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyRecentTasksChanged()V
    .locals 7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENT_TASKS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v2, -0x16f79bbc7c6cca1dL    # -9.116506384828794E197

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-nez p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRecentTasksChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RecentTasksController"

    const-string v1, "Failed call notifyRecentTasksChanged"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onLockTaskModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public final onRecentTaskListUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public final onTaskStackChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method

.method public final removeMultiSplitPair(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeSplitPair(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v3, :cond_7

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v3, :cond_0

    invoke-virtual {v0, v1, v7}, Lcom/android/wm/shell/recents/RecentTasksController;->removeMultiSplitPair(II)V

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v3, :cond_2

    invoke-virtual {v0, v2, v7}, Lcom/android/wm/shell/recents/RecentTasksController;->removeMultiSplitPair(II)V

    goto :goto_0

    :cond_1
    move v7, v3

    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_RECENT_TASKS_enabled:[Z

    aget-boolean v5, v8, v5

    if-eqz v5, :cond_3

    int-to-long v8, v1

    int-to-long v10, v2

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v17

    const/4 v15, 0x5

    const/16 v16, 0x0

    const-wide v13, 0x611605fda82a31f4L    # 4.837958296997731E159

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {v4, v1, v2, v7}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getPossibleRemoveTaskIdKey(III)I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    iget-object v5, v4, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(II)I

    move-result v6

    iget-object v7, v4, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    monitor-exit v5

    move v1, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    invoke-static {v2, v1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getTaskIdKey(II)I

    move-result v1

    iget-object v2, v4, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->mGroupedRecentTaskSaveMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    monitor-exit v5

    goto :goto_2

    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    :goto_2
    if-eq v1, v3, :cond_9

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->removeGruopedRecentTaskSaveInfo(I)V

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {v0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v3, v2, :cond_9

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mMultiSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v4, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeMultiSplitPair(II)V

    iget-object v5, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {v5, v2, v4, v1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->getPossibleRemoveTaskIdKey(III)I

    move-result v1

    if-eq v1, v3, :cond_8

    iget-object v2, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->removeGruopedRecentTaskSaveInfo(I)V

    iget-object v1, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mSaveController:Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;

    invoke-virtual {v1}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveController;->scheduleSaveGroupedRecentTasks()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    :cond_9
    :goto_4
    return-void
.end method

.method public final shouldEnableRunningTasksForDesktopMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mPcFeatureEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingTaskbarRunningApps()Z

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public unregisterRecentTasksListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method
