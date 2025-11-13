.class public final Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $tx:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;->$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;->$tx:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;->this$0:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v1, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$startCancelAnimation$1$2;->this$0:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->requireTransitionState()Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    move-result-object p1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {v0, p1}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->restoreWindowOrder(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;)V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v2, 0x3f5

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;->setCancelTransitionToken(Landroid/os/IBinder;)V

    return-void
.end method
