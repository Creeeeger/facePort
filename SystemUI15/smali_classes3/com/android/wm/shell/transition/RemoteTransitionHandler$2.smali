.class public final Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$info:Landroid/window/TransitionInfo;

.field public final synthetic val$mergeTarget:Landroid/os/IBinder;

.field public final synthetic val$startTransactionName:Ljava/lang/String;

.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler;Landroid/window/TransitionInfo;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$info:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$startTransactionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$mergeTarget:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->canTransferAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SURFACE_DEBUG_APPLY:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$startTransactionName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$startTransactionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$t:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->clear()V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->this$0:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iget-object p2, p2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$mergeTarget:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/wm/shell/transition/RemoteTransitionHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/RemoteTransitionHandler$2;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p2, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
