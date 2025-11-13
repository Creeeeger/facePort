.class public final synthetic Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ShellTransitions"

    const-string v2, "Remote transition died, finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
