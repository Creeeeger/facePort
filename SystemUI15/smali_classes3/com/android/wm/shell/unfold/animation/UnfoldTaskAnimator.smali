.class public interface abstract Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract clearTasks()V
.end method

.method public abstract hasActiveTasks()Z
.end method

.method public abstract init()V
.end method

.method public abstract isApplicableTask(Landroid/app/TaskInfo;)Z
.end method

.method public onSplitScreenTransitionMerged(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public abstract onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V
.end method

.method public onTaskChanged(Landroid/app/TaskInfo;)V
    .locals 0

    return-void
.end method

.method public abstract onTaskVanished(Landroid/app/TaskInfo;)V
.end method

.method public abstract prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
