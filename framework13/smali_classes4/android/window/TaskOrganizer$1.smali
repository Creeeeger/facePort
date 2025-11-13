.class Landroid/window/TaskOrganizer$1;
.super Landroid/window/ITaskOrganizer$Stub;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskOrganizer;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskOrganizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/window/TaskOrganizer;

    .line 323
    iput-object p1, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 327
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 337
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method synthetic blacklist lambda$addStartingWindow$0$android-window-TaskOrganizer$1(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 327
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic blacklist lambda$copySplashScreenView$2$android-window-TaskOrganizer$1(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 337
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->copySplashScreenView(I)V

    return-void
.end method

.method synthetic blacklist lambda$onAppSplashScreenViewRemoved$3$android-window-TaskOrganizer$1(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 342
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method synthetic blacklist lambda$onBackPressedOnTaskRoot$7$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 362
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onImeDrawnOnTask$8$android-window-TaskOrganizer$1(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 367
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onImeDrawnOnTask(I)V

    return-void
.end method

.method synthetic blacklist lambda$onSplitLayoutChangeRequested$9$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "infoBundle"    # Landroid/os/Bundle;

    .line 375
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskAppeared$4$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 347
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskInfoChanged$6$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 357
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskVanished$5$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 352
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$preloadSplashScreenAppIcon$10$android-window-TaskOrganizer$1(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 383
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskOrganizer;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic blacklist lambda$removeStartingWindow$1$android-window-TaskOrganizer$1(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 1
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 332
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 342
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 362
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 367
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method public blacklist onSplitLayoutChangeRequested(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "infoBundle"    # Landroid/os/Bundle;

    .line 374
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 347
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda8;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 357
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 352
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda10;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public blacklist preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 382
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskOrganizer$1;Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 2
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 332
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda9;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method
