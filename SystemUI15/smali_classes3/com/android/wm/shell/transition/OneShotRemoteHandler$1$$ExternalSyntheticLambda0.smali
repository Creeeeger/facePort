.class public final synthetic Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic f$2:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p3, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object p3, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;

    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v2, v2, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string v3, "ShellTransitions"

    invoke-static {v3, v2}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->cancelForceHideAnimationsIfNeeded(Ljava/lang/String;Lcom/android/wm/shell/common/ShellExecutor;)V

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object v2, v2, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mFinishedCallbackForSplitScreen:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v2, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object v3, v2, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mFinishedCallbackForSplitScreen:Ljava/lang/Runnable;

    :cond_1
    invoke-interface {v1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object v3, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;

    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;->this$0:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
