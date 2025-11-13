.class public final Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

.field public final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic val$finishT:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->val$finishT:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->val$finishT:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->this$0:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    new-instance v0, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
