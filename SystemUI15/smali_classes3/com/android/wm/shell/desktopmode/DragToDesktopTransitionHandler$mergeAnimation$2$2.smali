.class public final Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final synthetic $state:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->$state:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->$startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->$state:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    invoke-virtual {v1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->getDraggedTaskId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;->onAnimationEnd(I)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->$startTransitionFinishCb:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$mergeAnimation$2$2;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    return-void
.end method
