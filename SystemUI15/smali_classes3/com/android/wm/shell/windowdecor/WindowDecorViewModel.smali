.class public interface abstract Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public abstract onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public onTaskToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public onTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public abstract onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public onTransitionFinished$1(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;)V
    .locals 0

    return-void
.end method

.method public abstract setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
.end method

.method public abstract setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
.end method
