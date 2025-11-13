.class public final Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mMainChoreographer:Landroid/view/Choreographer;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mWindowDecorByTaskId:Landroid/util/SparseArray;

.field public final mWindowDecorToShowDialog:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorToShowDialog:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method


# virtual methods
.method public final destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    return-void
.end method

.method public final onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public final onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/wm/shell/ShellTaskOrganizer;->mDisplayChangingTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 9

    iget-boolean p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    :cond_1
    new-instance p3, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v0, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return p4
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onTransitionFinished$1(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorToShowDialog:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;)V

    const-wide/16 v1, 0x12c

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->createRestartDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v3, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mDisplayChangingTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iput-object p2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecorViewModel;->mWindowDecorToShowDialog:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .locals 0

    return-void
.end method

.method public final setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    return-void
.end method
