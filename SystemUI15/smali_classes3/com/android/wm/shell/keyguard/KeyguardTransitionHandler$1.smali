.class public final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$info:Landroid/window/TransitionInfo;

.field public final synthetic val$transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$info:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x1000

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->this$0:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$transition:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    const-wide/16 v0, 0x0

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
