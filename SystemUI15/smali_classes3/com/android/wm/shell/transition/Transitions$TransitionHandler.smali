.class public interface abstract Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public beforeMergeAnimation(Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 0

    return-void
.end method

.method public canMergeAbortedTransition(Landroid/window/TransitionInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public setAnimScaleSetting(F)V
    .locals 0

    return-void
.end method

.method public abstract startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end method

.method public transferAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    return-void
.end method

.method public transitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V
    .locals 0

    return-void
.end method
