.class public Landroid/window/TaskOrganizer;
.super Landroid/window/WindowOrganizer;
.source "TaskOrganizer.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInterface:Landroid/window/ITaskOrganizer;

.field private final blacklist mTaskOrganizerController:Landroid/window/ITaskOrganizerController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "taskOrganizerController"    # Landroid/window/ITaskOrganizerController;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 63
    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    .line 323
    new-instance v0, Landroid/window/TaskOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskOrganizer$1;-><init>(Landroid/window/TaskOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    .line 64
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 65
    if-eqz p1, :cond_1

    .line 66
    move-object v0, p1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/window/TaskOrganizer;->getController()Landroid/window/ITaskOrganizerController;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    .line 67
    return-void
.end method

.method private blacklist getController()Landroid/window/ITaskOrganizerController;
    .locals 2

    .line 391
    :try_start_0
    invoke-static {}, Landroid/window/TaskOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskOrganizerController()Landroid/window/ITaskOrganizerController;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "info"    # Landroid/window/StartingWindowInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 109
    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 123
    return-void
.end method

.method public blacklist createRootTask(IILandroid/os/IBinder;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "launchCookie"    # Landroid/os/IBinder;

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2, p3}, Landroid/window/ITaskOrganizerController;->createRootTask(IILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .line 183
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createStageRootTask(IIILandroid/os/IBinder;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I
    .param p3, "stageType"    # I
    .param p4, "launchCookie"    # Landroid/os/IBinder;

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/window/ITaskOrganizerController;->createStageRootTask(IIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .locals 2
    .param p1, "task"    # Landroid/window/WindowContainerToken;

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->deleteRootTask(Landroid/window/WindowContainerToken;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .locals 2
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 320
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getImeTarget(I)Landroid/window/WindowContainerToken;
    .locals 2
    .param p1, "display"    # I

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->getImeTarget(I)Landroid/window/WindowContainerToken;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRootTasks(I[I)Ljava/util/List;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->getRootTasks(I[I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 133
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 151
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 155
    return-void
.end method

.method public blacklist onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "infoBundle"    # Landroid/os/Bundle;

    .line 160
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 142
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 145
    return-void
.end method

.method public blacklist preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 165
    return-void
.end method

.method public blacklist registerOrganizer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->registerTaskOrganizer(Landroid/window/ITaskOrganizer;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 0
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 117
    return-void
.end method

.method public blacklist restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    .locals 2
    .param p1, "task"    # Landroid/window/WindowContainerToken;

    .line 276
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .line 280
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    .locals 2
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "interceptBackPressed"    # Z

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .line 266
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setIsIgnoreOrientationRequestDisabled(Z)V
    .locals 2
    .param p1, "isDisabled"    # Z

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1}, Landroid/window/ITaskOrganizerController;->setIsIgnoreOrientationRequestDisabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 312
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterOrganizer()V
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    iget-object v1, p0, Landroid/window/TaskOrganizer;->mInterface:Landroid/window/ITaskOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskOrganizerController;->unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V
    .locals 2
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "state"    # I

    .line 290
    :try_start_0
    iget-object v0, p0, Landroid/window/TaskOrganizer;->mTaskOrganizerController:Landroid/window/ITaskOrganizerController;

    invoke-interface {v0, p1, p2}, Landroid/window/ITaskOrganizerController;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    nop

    .line 294
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
