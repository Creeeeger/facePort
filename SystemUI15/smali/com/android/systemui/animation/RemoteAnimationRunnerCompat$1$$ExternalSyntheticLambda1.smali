.class public final synthetic Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/shared/CounterRotator;

.field public final synthetic f$1:Lcom/android/wm/shell/shared/CounterRotator;

.field public final synthetic f$2:Landroid/window/TransitionInfo;

.field public final synthetic f$3:Landroid/util/ArrayMap;

.field public final synthetic f$4:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/shared/CounterRotator;Lcom/android/wm/shell/shared/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/shared/CounterRotator;

    iput-object p2, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/shared/CounterRotator;

    iput-object p3, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$2:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$3:Landroid/util/ArrayMap;

    iput-object p5, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$4:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/shared/CounterRotator;

    iget-object v1, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/shared/CounterRotator;

    iget-object v2, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$2:Landroid/window/TransitionInfo;

    iget-object v3, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$3:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;->f$4:Landroid/window/IRemoteTransitionFinishedCallback;

    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, v0, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    iget-object v0, v1, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0, v4}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "RemoteAnimRunnerCompat"

    const-string v1, "Failed to call app controlled animation finished callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
