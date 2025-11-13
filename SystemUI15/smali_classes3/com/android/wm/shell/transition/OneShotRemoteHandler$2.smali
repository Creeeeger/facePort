.class public final Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$info:Landroid/window/TransitionInfo;

.field public final synthetic val$remoteDied:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Landroid/window/TransitionInfo;Landroid/os/IBinder$DeathRecipient;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$info:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$remoteDied:Landroid/os/IBinder$DeathRecipient;

    iput-object p4, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v4, -0x1aa5a0174d93c5d1L    # -1.7100312134472359E180

    const/4 v6, 0x4

    const-string v7, "Finished one-shot remote transition %s for (#%d)."

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$remoteDied:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object p2, p2, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v1, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
